clc;
clear all;
% fixed-point FIR filter simulator

% User parameters

% general
    fs = 16000;          % sampling rate
    T = 2;              % period

% input
    vref = 1;            % max value
    pfullscale = 0.95; % percentage of full scale
    Nx = 16;            % Nx bit signed integer datatype

% coefficients
    N      = 33;    % Order
    Fstop1 = 100;  % First Stopband Frequency
    Fpass1 = 150;  % First Passband Frequency
    Fpass2 = 250;  % Second Passband Frequency
    Fstop2 = 300;  % Second Stopband Frequency
    Wstop1 = 1;     % First Stopband Weight
    Wpass  = 1;     % Passband Weight
    Wstop2 = 1;     % Second Stopband Weight
    b  = firls(N, [0 Fstop1 Fpass1 Fpass2 Fstop2 fs/2]/(fs/2), [0 0 1 1 0 0], [Wstop1 Wpass Wstop2]);
    Nb = 16;            % Nb bit signed integer datatype
    Qb = 18;            % number of fractional bits

% intermediate values    
    Nu = 32;            % Nu bit signed integer datatype
    Qu = 30;            % number of fractional bits
    
% outputs
    yq = zeros(fs*T,1); % output of fixed point filter
    Ny = 16;            % Ny bit signed integer datatype
    Qy = 15;            % number of fractional bits
    
% Generate fixed point input signal (do both saturation and quantization)

    x = vref*pfullscale*(5*rand(fs*T,1)-1);  % unquantized input signal
    figure();
    plot (x);
    i1 = find(x>vref*(2^(Nx-1)-1)/(2^(Nx-1)));

    x(i1) = vref*(2^(Nx-1)-1)/(2^(Nx-1));

    i2 = find(x<-vref);

    x(i2) = -vref;
    xq = round((x/vref)*2^(Nx-1))*vref/(2^(Nx-1));  % fixed-point quantization


% Fixed point FIR filtering
% Quantize filter coefficients to fixed-point
    bint = round(b*2^Qb);       % temporary integer quantization
    i1 = find(bint>2^(Nb-1)-1);
    bint(i1) = 2^(Nb-1)-1;
    i2 = find(bint<-2^(Nb-1));
    bint(i2) = -2^(Nb-1);
    bq = bint/2^Qb         % fixed-point quantization
    
% do filtering

    prod_overflow_count = 0;
    sum_overflow_count = 0;
    out_overflow_count = 0;
    pmax = 0;
    uqmax = 0;

    for n=(length(bq)+1):length(xq),
        
        uq = 0;
        
        for k=1:length(bq),
                  
            [p,i] = fpprod(bq(k),xq(n-k),Nu,Qu);  % fixed-point calculation of product
            
            if abs(p)>pmax,
                pmax = abs(b);
            end
          
            if i==1,
                prod_overflow_count = prod_overflow_count+1;
                disp(['product overflow! bq*xq=' num2str(bq(k)*xq(n-k))]);
            end
            
            [uq,i] = fpadd(uq,p,Nu,Qu); % fixed-point calculation of addition
            
            if abs(uq)>uqmax,
                uqmax = abs(uq);
            end
            
            if i==1,
                sum_overflow_count = sum_overflow_count+1;
                disp(['sum overflow! p+q = ' num2str(p+q)]);
            end

	    end
            
        
        [yq(n),i] = fpprod(uq,1,Ny,Qy);
        
        if i==1
            out_overflow_count = out_overflow_count+1;
            disp(['output overflow! uq = ' num2str(uq)]);
        end
        
    end

    

% plot magnitude responses

[Pxq,f] = pwelch(xq,1024,512,1024,fs);
[Pyq,f] = pwelch(yq,1024,512,1024,fs);
plot(f/1e3,10*log10(Pxq),f/1e3,10*log10(Pyq));    
legend('input','output');
xlabel('freq (kHz)');
ylabel('magnitude response (dB)');
grid on
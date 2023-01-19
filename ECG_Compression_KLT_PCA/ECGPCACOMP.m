clear
load C:\Users\REDDY\Downloads\s0083lrem
whos
print_figs_to_file = 0;

for k = 1:15
val(k ,:) = val(k ,:) - mean (val(k ,:));
end
% display data
clf
suptitle ('15 ECG CHANNELS')
for k = 1:15
subplot (8,2,k)
plot (val(k ,:))
axis tight
axis off
end
if print_figs_to_file
orient landscape , print -dpsc pca_ECG_figures
end


A = val * val' ; % data covariance matrix - 15 x 15 matrix
% compute eigenvectors and eigenvalues


[E,D] = eig(A);
% check that A = E D E'

err = A - E * D * E';
max (abs (err (:)));


% eigevalues in descending order
d = diag (D);
[tmp , k] = sort (-d);
% resort


d = d(k)
D = diag (d);
E = E(:,k);


% check that A = E D E'
err = A - E * D * E';
max (abs (err (:)));    
% Set P matrix
P = E';


clf
stem (d, '.')    
title ('EIGENVALUES')
xlabel ('INDEX')
if print_figs_to_file
orient landscape , print -append -dpsc pca_ECG_figures
end

% compute the components of the data
Y = P * val;
% display component signals
clf
suptitle ('15 COMPONENTS FOUND USING PCA')
for k = 1:15
subplot (8,2,k)
plot (Y(k ,:))
th = text (val(1)-0.1 ,0 , sprintf ('%9.4 f',d(k )));
set (th , 'HorizontalAlignment' ,'right');
axis tight
axis off
end
if print_figs_to_file
orient landscape , print -append -dpsc pca_ECG_figures
end

S = zeros (15 ,1);
for k = 1:15
S(k) = sum(Y(k ,:).^2);
end
S

%Approximate all 15 ECG signals using first 3 principle components

%If we reconstruct the 15 channels from only the first 3 components, then we obtain a a 15-channel data set that
%is close to the original 15-channel data set.


Y2 = Y;
Y2 (4:15 ,:) = 0;
X_approx = P'* Y2;
% display approximate reconstruction from first 3 principle components
clf
suptitle ('15 ECG CHANNELS RECONSTRUCTED FROM TOP 3 PRINCIPAL COMPONENTS')
for k = 1:15
subplot (8,2,k)
plot (X_approx (k ,:))
axis tight
axis off
end
if print_figs_to_file
orient landscape , print -append -dpsc pca_ECG_figures
end


%Approximate all 15 ECG signals using first 7 principle components
%If we reconstruct the 15 channels from only the first 7 components, then we obtain a 15-channel data set that is
%almost indistinguishable from the original 15-channel data set. Practially all the information in the 15 channels
%can be represented using only 7 channels.


Y2 = Y;
Y2 (8:15 ,:) = 0;
X_approx = P'* Y2;
% display approximate reconstruction from first 7 principle components
clf
suptitle ('15 ECG CHANNELS RECONSTRUCTED FROM TOP 7 PRINCIPAL COMPONENTS')
for k = 1:15
subplot (8,2,k)
plot (X_approx (k ,:))
axis tight
axis off
end
if print_figs_to_file
orient landscape , print -append -dpsc pca_ECG_figures
end

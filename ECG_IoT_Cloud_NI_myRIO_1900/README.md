A Novel IoT Cloud-based Real-Time Cardiac Monitoring Approach using NI myRIO-1900 for Telemedicine Applications![image](https://user-images.githubusercontent.com/117635899/213390861-75ee45e9-cb32-489d-82ed-f68f9a626e92.png)

Motivation & Introduction 

    The mortality rate of chronic cardiac patients are too high

    There is no simple  and portable system

    Continuous monitoring is not done (except in ICU)


    Electrocardiogram (ECG) is a representation of electrical events of a cardiac cycle

    Each event has a distinct waveform namely P, Q, R, S and T

    Contraction of any muscle is associated with electrical changes called Depolarization

![image](https://user-images.githubusercontent.com/117635899/213391118-618e259b-c183-4fef-85ab-deee05024654.png)

      
    These changes could be detected by the electrodes attached to body surface
          
          The P wave is due to atrial depolarization, QRS complex is due to ventricular depolarization, T wave is due to ventricular repolarisation.
          
          These electrical activities could be measured by bipolar leads or unipolar leads.
  
  Limitations of Existing Devices
  
  Several ECG monitoring methods were proposed but issues remain: 
  
  Complexity involved in design and integration aspects
  
  Simplified and user friendly approach was not specified

  Cost-effective healthcare delivery was not met; Available equipment are greater than 15K USD
  
  Many methods are used for short distance  transmission

Features of Proposed Method

    Uses reconfigurable embedded device with wireless capability
    
    Employs cloud-hosted IoT service (IBM Watson) 
    
    Quick assessment of heart rate
    
    Can be transmitted to remote location
    
    Access to affordable healthcare
    
    
    ![image](https://user-images.githubusercontent.com/117635899/213392193-9cab4f57-7731-4995-b78f-b469014faea2.png)

NI myRIO-1900

  NI MyRIO-1900 is a portable reconfigurable I/O (RIO) device that could be used to design control, robotics, and mechatronics systems.

  This provides analog input (AI), analog output (AO), digital input and output (DIO), audio, and power output in a compact embedded device.

  It connects to a host computer over USB, bluetooth and wireless

  It uses Xilinx Z-7010 processor with a speed of 667 MHz, dual core with 256 Mb non-volatile memory

LabVIEW Block sets

![image](https://user-images.githubusercontent.com/117635899/213392476-f7546bbe-3b83-4f18-9a58-63c5e3c28247.png)

Experimental Setup


![image](https://user-images.githubusercontent.com/117635899/213392674-d7da9ff8-833f-4325-905c-22f65c0d1ced.png)


Data Acquisition

  In this method, ECG data was collected with two subjects in Lead II configuration with single channel by using Ag/Agcl electrodes.

  The data was taken with a sampling frequency of 250 Hz.

  It was stored in a USB device and transmitted to a laptop through wireless.

IBM Watson IoT Platform

The system is configured to communicate to IBM Watson IoT platform

The heart rate in real-time could be viewed at remote locations

In the first step, the system is connected to the cloud

Subscribed & Published

The id. generated for each subject could be shared with the respective remote locations

IoT Platform

![image](https://user-images.githubusercontent.com/117635899/213393168-5d2cebaf-07b1-4a88-91e2-9b41aec269fa.png)

Employed the espotel (Etteplan) to upload the real-time data

Uses IBM IoT for message queuing and telemetry transport (MQTT)

MQTT is a machine-to-machine IoT connectivity protocol

The Blue mix IoT MQTT acts as a broker distributer

RESULTS

The results are shown after analysis by LabVIEW platform

One of the ECG features i.e. heart rate was extracted from the subject and transmitted using wireless IoT


![image](https://user-images.githubusercontent.com/117635899/213393422-196ddef2-cf96-4bf6-bbfe-c799ef062c54.png)

Heart Rate from Subject 2 (Remote Location)

![image](https://user-images.githubusercontent.com/117635899/213393457-c4c930fe-2b98-4c1f-b7e9-6f70cef6689d.png)


Advantages

    Continuous ECG signals from Vernier EKG sensor and myRIO processor were recorded.

    These real-time signals were transmitted through Wi-Fi to a nearby system or laptop.

    Heart rate parameter was transmitted from the system to remote locations through IBM Watson IoT platform

    
Conclusion
    
    This method could be used for initial level of cardiac screening in rural areas.

    The main advantage of this method is cost effectiveness and portability.

    It could be implemented for multi-parameter monitoring apart from heart rate



REFERENCES

Zhe Yang, Qihao Zhou, Lei Leiz, Kan Zheng, Wei Xiang,”An IoT-cloud based wearable ECG monitoring system for smart healthcare” Journal of Medical Systems, Dec 2016

Dipali Bansal, MunnaKhan, Ashok.K.Salhan, ” In a computer-based wireless system for online acquisition, monitoring and digital processing of ECG waveforms “ in Computers in Biology and Medicine 39 (2009) 361 -- 367

Maryem Neyja, Shahid Mumtaz, Kazi Mohammed Saidul Huq, Sherif Adeshina Busari, Jonathan Rodriguez , Zhenyu Zhou ,”An IoT-Based E-Health Monitoring System Using ECG Signal”

Laplante, P.A.; Laplante, N. The Internet of Things in Healthcare:  Potential Applications and Challenges.IT Prof. 2016, 18, 2–4.

Higinio Mora, David Gil, Rafael Muñoz Terol, Jorge Azorín and Julian Szymanski, “An IoT-Based Computational Framework for Healthcare Monitoring in Mobile Environments,” Sensors 2017, 17, 2302

Uma Arun, Natarajan Sriraam and Srinivasulu Avvaru “Study and     Investigation of Continuous Cardiac  Monitoring using Vernier EKG withmyRIO” in I4C2016 published in IEEE Xplore digital Library.

Meina Li, and Youn Tae Kim,” Design of a Wireless Sensor System with the Algorithms of Heart Rate and Agility Index forAthlete Evaluation.” Sensors 2017, 17, 2373.

Enzo Pasquale Scilingo,Gaetano Valenza,”Wearable Electronics and Embedded Computing Systems for Biomedical Applications.”

Gaetano,Valenza,”Wearable Electronics and Embedded Computing Systems for Biomedical Applications.” open access journal Electronics (ISSN 2079-9292) from 2016􀈮2017

Luca Catarinucci, Danilo de Donno, Luca Mainetti, Luca Palano Luigi Patrono, Maria Laura Stefanizzi, Luciano Tarricone, “An IoT-Aware Architecture for Smart Healthcare Systems”, IEEE Internet of Things Journal (Volume: 2 , Issue: 6 , Dec. 2015)

C. T. Lin, K. C. Chang, C. L. Lin, C. C. Chiang, S. W. Lu, S.S.Chang, B. S. Lin, H. Y. Liang, R. J. Chen, Y. T. Lee, and L. W. Ko, “An Intelligent Telecardiology System Using a Wearable and Wireless ECG to Detect Atrial Fibrillation,” IEEE Transactions on Information Technology in Biomedicine, vol. 14, no. 3, pp. 726–733, May 2010

A. I. Hernandez, F. Mora, M. Villegas, G. Passariello, and G. Carrault, “Real-time ecg transmission via internet for nonclinical applications,” IEEE Transactions on Information Technology in Biomedicine, vol. 5, no. 3, pp. 253–257, Sept 2001

Kim H, Kim S, Van Helleputte N et al,”. A configurable and low-power mixed signal SoC for portable ECG monitoring Applications”,. IEEE Transactions on Biomedical Circuits and Systems vol. 8:pp. 257-267, 2014

Tseng C, “Coordinator traffic diffusion for data-intensive Zigbee transmission in real-time electrocardiography monitoring”, IEEE Transactions on Biomedical Engineering vol. 60:pp. 3340-3346, 2013















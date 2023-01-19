# Biomedical Signal Processing

"An IoT Wi-Fi Connected Sensor For Real-Time Heart Rate Variability Monitoring"

Motivation 

Heart Rate Variability (HRV) ?

  Essential to determine the heart's health and it’s functioning.
  
  Risk stratification in patients post-myocardial infarction or heart failure[1].
  
  Novel HRV measurements for atrial fibrillation detection[1].

![image](https://user-images.githubusercontent.com/117635899/213384046-269fee87-c19a-436b-b66d-500aef7521e6.png)

Objective

  To implement a real-time HRV monitoring system.
  
  Leverage the benefits of internet-of-things (IoT) and cloud technology.
  
  The mobile healthcare monitoring framework using Wireless Body Area Network (WBAN) Sensors.
  
  Low-power - Low latency - Portable monitoring Application.

![image](https://user-images.githubusercontent.com/117635899/213384930-55ec68fb-4ed2-47ce-b495-cd0e8e054301.png)

AD8232 ECG Analog Frontend 

  An integrated single-lead ECG front end from Analog Devices with common-mode rejection ratio of 80 dB (dc to 50 Hz).
  
  AD8232 presents high signal gain of 100 with dc blocking capabilities.
  
  Operates with a supply voltage of 2.0 V to 3.5 V
  
Texas Instruments (TI) MSP430F5529

  An ultra-low-power 16-bit microcontroller unit (MCU) 
  
  It has 128KB of flash memory, 8KB of random access memory with 25-MHz 
  
  The MCU has five timers and serial interfaces SPI/UART/I2C
  
  A 12-bit Analog-to-digital converter (ADC).
  
  MCU operates with low supply voltage 3.6V down to 1.8V

The CC3100 SimpleLink™ Wi-Fi® booster pack
  
  An Internet-on-a-chip solution for adding wireless capability to TI MCU's.
  
  The network processor has a dedicated ARM MCU which completely offloads the Wi-Fi &internet protocols from external MCU.
  
  Supports an 802.11 b/g/n radio /baseband/MAC with an AES (Advanced Encryption System) 256-bit encryption for secured internet connections.
  
  Can be configured to work in the Station, Access point, and Wi-Fi direct modes.The TCP/IP stack can make 8 simultaneous TCP/UDP connections and 2 simultaneous TLS &   SSL connections.
  
  On-board chip antenna with option for U.FL-based conducted testing.
  
  The MCU communicates the booster pack via serial peripheral interface (SPI) or through an UART interface
  
  ![image](https://user-images.githubusercontent.com/117635899/213385658-d0eb3cfc-f5a0-475c-9b62-1f240b924ee3.png)

Why PubNub DSN?

  Availability of tools and SDKs specific to microcontrollers and embedded devices
  
  Impressive Low Latency.
  
  Choice of choosing Web sockets/MQTT/REST Protocols.
  
  HIPAA Act Compliance.
  
  Easy access and support to third party messaging platforms.

DATA ACQUISITION AND PROCESSING

![image](https://user-images.githubusercontent.com/117635899/213386033-046b7c80-db77-419c-bc86-baad35644f67.png)

  The data was acquired from a healthy subject with informed consent.

  The Ag/AgCl surface electrodes were attached to limbs in Lead-I configuration.

  The data was recoded with a sampling frequency of 500 Hz by enabling the timer ‘0’ interrupt control on MCU.

  The signals were passed through a 50Hz software notch filter to eliminate the power-line interference.


SIGNAL PROCESSING :ECG Peak Detection and IBI calculation

![image](https://user-images.githubusercontent.com/117635899/213386370-aebfb5ea-cb14-44b8-928e-90de63cedf46.png)

IoT CLOUD PLATFORM AND CONNECTIVITY

  The PubNub data stream network (DSN) which operates at the edge of the network to control and manage the real-time applications
  An evolution from the traditional three-tier architecture with a minimum latency of 250 milliseconds or less.

![image](https://user-images.githubusercontent.com/117635899/213386657-73b6f7f1-55cd-4bcf-ad95-465d597a3f19.png)

RESULTS

![image](https://user-images.githubusercontent.com/117635899/213386789-adf2d961-9cdc-46ff-b5fa-94cfd431b30c.png)

The HR, BPM and IBI values derived from the real-time peak detection algorithm implemented on MCU were formatted in to java script object notation (JSON) objects and the JSON payload was converted to string format.

The string payload was published through PubNub Wi-Fi client.

The PubNub API’s will automatically parse the incoming stream and present the data in readable form to all the subscribers.

The freeboard.io was configured to receive the PubNub channel data for the real-time visualization. 

The freeboard.io dashboards have few inbuilt data plotting widgets plugin for quick visualization of streamed data from the PubNub channels. The dashboard can be customized to display data from many sensors using JSON custom developed plugins.


![image](https://user-images.githubusercontent.com/117635899/213386987-d9e9ebd2-2717-4c1f-84c4-1380eede5fde.png)

Conclusion & Future Work

  This experimental work explores an IoT connected low-power wireless sensor interface implementation for long term monitoring of cardiac parameters.  The results were   quite promising.
  
  The real-time streamed parameters were accurate and dependable and could be easily integrate in to wearable systems.
  
  Further, implementation of cyber-physical system using WBAN sensor for healthcare monitoring will extend the horizons of controlled and secure healthcare delivery     with low latency and multi-hop routing.
  
  The proposed framework could be developed further for multi-parameters monitoring with more robust signal processing.
  
  The frame work can be extended to continuous monitoring of ICU patients to minimize the risk of infection and to reduce the cost of maintaining centralized IoT cloud   infrastructure.

REFERENCES

[1]. Watanabe E., Kiyono K., Yamamoto Y., Hayano J., “Heart Rate Variability and Cardiac Diseases. In: Iwase S., Hayano J., Orimo S. (eds) Clinical Assessment of the Autonomic Nervous System. Springer, Tokyo , 2017.

[2]. R. S. Dilmaghani, H. Bobarshad, M. Ghavami, S. Choobkar and C. Wolfe, "Wireless Sensor Networks for Monitoring Physiological Signals of Multiple Patients," in IEEE Transactions on Biomedical Circuits and Systems, vol. 5, no. 4, pp. 347-356, Aug. 2011.

[3]. S. C. Mukhopadhyay, "Wearable Sensors for Human Activity Monitoring: A Review," in IEEE Sensors Journal, vol. 15, no. 3, pp. 1321-1330, March 2015.

[4]. Faeq Hussein and et. al., “An Automated Remote Cloud-Based Heart Rate Variability Monitoring System”. IEEE Access. PP. 1-1. 10.1109/ACCESS, 2018.

[5]. Yang, Z., Zhou, Q., Lei, L. et al. J, "An IoT-cloud Based Wearable ECG Monitoring System for Smart Healthcare", Med Syst, 40:286, 2016.

[6]. K. Ullah, M. A. Shah and S. Zhang, "Effective ways to use Internet of Things in the field of medical and smart health care," 2016 International Conference on Intelligent Systems Engineering (ICISE), Islamabad , pp. 372-379, 2016.

[7]. M. S. Mahmud, H. Wang, A. M. Esfar-E-Alam and H. Fang, "A Wireless Health Monitoring System Using Mobile Phone Accessories," in IEEE Internet of Things Journal, vol. 4, no. 6, pp. 2009-2018, Dec. 2017.

[8]. Chen, H.C. & Chen, Szi-Wen., “A Moving Average based Filtering System with its Application to Real-time QRS Detection”. Computers in Cardiology. 30. 585 - 588. 10.1109/CIC.2003.1291223, 2003.

[9]. Li M, Kim YT. “Design of a Wireless Sensor System with the Algorithms of Heart Rate and Agility Index for Athlete Evaluation”. Sensors (Basel, Switzerland). 17(10):2373, 2017.

[10]. Mora H, Gil D, Muñoz Terol R, Azorín J, Szymanski J. “An IoT-Based Computational Framework for Healthcare Monitoring in Mobile Environments”. Sensors (Basel, Switzerland),7(10):2302, 2017.

[11]. Park H, Dong S-Y, Lee M, Youn I, “The Role of Heart-Rate Variability Parameters in Activity Recognition and Energy-Expenditure Estimation Using Wearable Sensors”. Sensors (Basel, Switzerland).,17(7):1698, 2017.

[12]. Son, Vo & Tan A, Do, “Implementation of a Cyber-Physical System Using Wireless Sensor Networks for Monitoring Patients”. Journal of Science and Technology, Issue on Information and Communication Technology. Vol 1. 10.31130/jst.2015.8., 2015

[13] Pubnub.com, ‘Data Streaming Network', 2018. [Online]. Available: http://www.pubnub.com.[Accessed:27-Sep-2018].

[14].Freeboard.io,‘Real-time IoT Visualization', 2018. [Online]. Available: http://www.freeboard.io.[Accessed:27-Sep-2018].










Implementation and Development of Motor Imagery Brain Computer Interface using Python(x,y)


MOTIVATION
  BCI-Direct Communication between Brain and Computer
  
  “locked in”- Paralyzed
  
  Motor Imagery BCI
  
  Gert Pfurtscheller et al.- detection of EEG power changes-ERD/ERS-mu and beta rhythms
  
  Need of  Low cost BCI systems
      Commercial systems costs are very high.

 Aim is to develop Low cost MI BCI  systems using low cost hardware and open source software.

This thesis  involves implementation and development of one such  MI BCI.

![image](https://user-images.githubusercontent.com/117635899/213846615-6d63e125-d91c-4e99-9b0a-3537e822f8cf.png)


THE MOTOR IMAGERY BCI
  µ (8-12 Hz) and ß (13-24Hz) rhythms
  
  Event-related Desynchronization (ERD)
  
  Event-related Synchronization (ERS)
  
  planning, Movement, Imagination ,passive, observation of movements.

![image](https://user-images.githubusercontent.com/117635899/213846669-65caf57d-59ee-40f4-856d-07ec5cb21ac5.png)

![image](https://user-images.githubusercontent.com/117635899/213846679-0a2eb8e7-e984-4cbc-8fda-0a8ae9991b39.png)

FUNCTIONAL MODEL

![image](https://user-images.githubusercontent.com/117635899/213846708-893487d3-453d-4114-9049-ed0c60aa5bab.png)

EEG Electrodes and Amplifier (g.USBamp)

EEG signal artifacts (Notch filter)

Feature Extraction( Band Power)

Feature classification ( LDA)

MOTOR IMAGERY BCI FRAME WORK

![image](https://user-images.githubusercontent.com/117635899/213846758-0d766411-4934-43dd-b336-6de002902733.png)

LITERATURE REVIEW

Why Python(x,y) ?

[image](https://user-images.githubusercontent.com/117635899/213846800-6c982089-a436-4564-8682-f7bfc91ce1ea.png)
[image](https://user-images.githubusercontent.com/117635899/213846816-56397f04-686b-4598-8c5a-37b5dc1601c1.png)

Feature Extraction and Classification :Why Band Power Technique and LDA ?

![image](https://user-images.githubusercontent.com/117635899/213846868-4297612f-270a-43cd-8937-8045982b7e77.png)

![image](https://user-images.githubusercontent.com/117635899/213846881-5f4e48d1-e032-4a89-9cac-ed2015c21318.png)

MI BCI software Development steps:

![image](https://user-images.githubusercontent.com/117635899/213846909-138796b0-16ba-4ef8-8a86-4317053c7641.png)

![image](https://user-images.githubusercontent.com/117635899/213846923-9612bc2f-a7e2-465c-8ead-6d6c7544d039.png)

Parameter Extraction and classification

![image](https://user-images.githubusercontent.com/117635899/213846933-f8cf8d22-1173-413b-9b63-3c731de58b18.png)

Preprocessing

Common Spatial Filtering (CSP)

  Spatial-filters that increase/decrease the variance.
  
  Variance of BP-filtered signals is equivalent to its band power.
  
  CSP filters are employed to determine amplitude modulations of SMR and to differentiate motor intent by ERD/ERS phenomenon

![image](https://user-images.githubusercontent.com/117635899/213846983-84de30e5-92cf-4127-83eb-392d7e05abad.png)

Classification

Linear discriminant analysis (LDA)

    Maximizes the distance between the means 

    Minimizes the variance between two classes

    Dimensionality reduction

![image](https://user-images.githubusercontent.com/117635899/213847063-55a0e471-fa19-4310-afb6-6dd34a40d6d8.png)
Fig: projections of two dimensional set onto vector  w

FFT  plot of C3-CZ digital out : sample Vs. Amplitude (mv) clearly shows the µ  Rhythm Activity in rest condition and during  imagination of  finger Movement!

![image](https://user-images.githubusercontent.com/117635899/213847109-628d3724-b369-4d06-b0bb-685a9ac6af73.png)

FFT  plot of C4-CZ digital out : sample Vs. Amplitude (mv) clearly shows the µ  Rhythm Activity in rest condition and during  imagination of  finger Movement.

![image](https://user-images.githubusercontent.com/117635899/213847128-3069053d-9433-4664-a8d4-0b7dda433632.png)

![image](https://user-images.githubusercontent.com/117635899/213847143-aa835e59-162f-452f-b9b2-5f99e965ab38.png)

![image](https://user-images.githubusercontent.com/117635899/213847179-229813f0-d082-4903-b3b6-ac60d74360ff.png)

![image](https://user-images.githubusercontent.com/117635899/213847193-c68f8fb6-468a-4ca3-9b47-41880fec21c6.png)

![image](https://user-images.githubusercontent.com/117635899/213847214-edca8769-051f-45cb-b3df-0bfcc5a1d571.png)













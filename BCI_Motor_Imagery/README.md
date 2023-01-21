
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

FFT  plot of C3-CZ digital out : sample Vs. Amplitude (mv) clearly shows the µ  Rhythm Activity in rest condition and during  imagination of  finger Movement!

![image](https://user-images.githubusercontent.com/117635899/213847109-628d3724-b369-4d06-b0bb-685a9ac6af73.png)

FFT  plot of C4-CZ digital out : sample Vs. Amplitude (mv) clearly shows the µ  Rhythm Activity in rest condition and during  imagination of  finger Movement.

![image](https://user-images.githubusercontent.com/117635899/213847128-3069053d-9433-4664-a8d4-0b7dda433632.png)

![image](https://user-images.githubusercontent.com/117635899/213847143-aa835e59-162f-452f-b9b2-5f99e965ab38.png)

![image](https://user-images.githubusercontent.com/117635899/213847179-229813f0-d082-4903-b3b6-ac60d74360ff.png)

**ERD/ERS C3 channel**

![image](https://user-images.githubusercontent.com/117635899/213847423-5b9e0e1e-043b-422e-93b4-51c323f9e957.png)

**ERD/ERS C4 channel**

![image](https://user-images.githubusercontent.com/117635899/213847445-985a58a7-5db0-4270-aa4f-2fc055b046bc.png)

 **Subject 1:ERD for L/R hand finger Mov. at C3 and C4 (µv)**
 
![image](https://user-images.githubusercontent.com/117635899/213847529-99220438-1f44-43d8-9838-7de9dcc7c806.png)

Classification: LDA ( Scatter plot)

![image](https://user-images.githubusercontent.com/117635899/213847606-25762693-f940-4cda-86ab-320ffc87537f.png)

**Results Comparison : Berlin MI BCI IV Dataset**

ERD for L/R hand finger Mov. at C3 and C4 (µv)

![image](https://user-images.githubusercontent.com/117635899/213847634-dc7795f0-95b6-4595-abe2-388619c19113.png)

![image](https://user-images.githubusercontent.com/117635899/213847683-314297d5-caab-42fa-a7c5-60f6d864ce4a.png)

![Picture1](https://user-images.githubusercontent.com/117635899/213847705-9b059671-0f7f-4552-ba41-ed05ed018925.png)

**CONCLUSION AND FUTURE WORK**

 The Classification Accuracy obtained is  67% with  LDA  and Band-power Features.

The results with in-house bio-amp are  much comparable with already implemented  open source BCI python frameworks with  commercial grade  bio amplifiers.

 The results shows that the increase in training  sessions could results in accuracy  of, up to  85%.

 Classification Accuracy  could be increased with the use of ACTIVE  electrodes  with in-house Amplifiers.

The set-up could be modified to perform the online classification of the motor intent with the help of any adaptive linear algorithm, so that the set-up can be used for practical purposes.

Features such as the automatic MI activity band detection specific to each subject could be incorporated.

REFERENCES

[1]. Luz María Alonso-Valerdia, Francisco Sepulvedaa, “Programming an Offline-Analyzer of Motor Imagery Signals via Python Language”, 33rd Annual International Conference of the IEEE EMBS Boston, Massachusetts USA, August 30 - September 3, 2011.

[2]. Alonso-Valerdi L. and Sepulveda F. (2015).  “Implementation of a Motor Imagery based BCI System using Python Programming Language” . In Proceedings of the 2nd International Conference on Physiological Computing Systems, ISBN 978-989-758-085-7, pages 35-43. DOI: 10.5220/0005211500350043.

[3]. Venthur B1, Dähne S2,3,4, Höhne J2, Heller H2, Blankertz B2., “Wyrm: A Brain-Computer Interface Toolbox in Python.”, Neuroinformatics.  2015 Oct;   13(4):471-86. doi: 10.1007/s12021-015-9271-8.

[4]. Forrest Sheng Bao, Xin Liu, and Christina Zhang, “PyEEG: An Open Source Python Module for EEG/MEG Feature Extraction”. Computational Intelligence and Neuroscience,Volume 2011 (2011), Article ID 406391, 7 pages
http://dx.doi.org/10.1155/2011/406391

[5]. Hossein Bashashati, Rabab K. Ward, Gary E. Birch1, Ali Bashashati. “Comparing Different Classifiers in Sensory Motor Brain Computer Interfaces”. PLOS ONE | DOI:10.1371/journal.pone.0129435 June 19, 2015.

[6].G. Pfurtscheller, C. Neuper, “Motor Imagery and Direct Brain- Computer Interface,” Proceeding of IEEE Transactions on Neural Systems and Rehabilitation Engineering,vol.89, pp. 1123-1134, 2001.


[7].Hendricks HT, van Limbeek J, Geurts AC, Zwarts MJ. “Motor recovery after stroke: a systematic review of the literature”. Arch Phys Med Rehabil 2002; 83: 1629–1637.


[8].Jackson PL, Lafleur MF, Malouin F, Richards C, Doyon J. “Potential role of mental practice using motor imagery in neurologic rehabilitation.” Arch Phys Med Rehabil 2001; 82: 1133–1141.


[9].C. Neuper, G. Pfurtscheller, “Event-related dynamics of cortical rhytms: frequency-specific features and functional correlates,” Inter. Jour. of Psychophys., 43, pp. 41-58, 2001.


[10]. Miguel A. Carreira-Perpinan. “A review of dimension reduction techniques”. Department of Computer Science. University of Sheffield. Tech. Rep. CS-96-09, pages 1–69, 1997.

[11]. Jonathan R. Wolpaw, Niels Birbaumer, Wiliam J. Heetderks, Denis J. McFarland, P. H. Peckham, G. Schalk, E. Donchin, L.A. Quatrano, C. J. Robinson, and T. M. Vaughan. “Brain-computer interface technology: a review of the first international meeting”. , IEEE Transactions on  Rehabilitation Engineering, 8(2):164 –173,Jun 2000.

[12]. Ali Bashashati, Mehrdad Fatourechi, Rabab K. Ward, and Gary E. Birch. “A survey of signal processing algorithms in brain–computer interfaces based on electrical brain signals”. Journal of Neural engineering, 4(2):32–57, 2007.

[13]. Steven G. Mason and Gary E. Birch. “A general framework for brain-computer interface design”., IEEE Transactions on Neural Systems and Rehabilitation Engineering,11(1):70–85, 2003.

[14]. Andrew Jackson, Chet T Moritz, Jaideep Mavoori, Timothy H Lucas, and Eberhard E Fetz. “The Neurochip BCI: towards a neural prosthesis for upper limb function”. IEEE Transactions on Neural Systems and Rehabilitation Engineering, 14(2):187–190, 2006.

[15]. G.tec, “ Main products” Internet: http://www.gtec.at/Products Dec 1 2015 [Dec 02 2015]

[16].BCI2000, “Introduction to mu rhythms” Internet: http://www.bci2000.org/wiki/index.php/User_Tutorial:Introduction_to_the_Mu_RhythmDec 20 2008 [Dec 02 2015].

ACKNOWLEDGEMENT



EXTERNAL GUIDE
Prof. Hema  Ramachandran
LAMP & bci Group
Raman  Research  Institute
Bangalore-80

INTERNAL GUIDE
Dr. H.N SUMA
Professor  &  HOD
Department of  MEDICAL  ELECTRONICS
BMS College  of engineering, BANGALORE-19

Prof. Ramesh Balasubramanyam
Brain Computer Interface Laboratory
Raman Research Institute
Bangalore-80.

Mrs. Sujatha
Scientific Assistant
Brain Computer Interface Laboratory
Raman Research Institute
Bangalore-80.













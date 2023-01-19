
ECG  SIGNAL  COMPRESSION USING  KARHUNEN  LOEVE  TRANSFORM  (KLT)
aka PCA (PRINCIPAL COMPONENT ANALYSIS)

OUTLINE:

        ECG COMPRESSION - TRANSFORM TECHNIQUES - KLT

        PCA?

        PCA  and KLT

        PROCEDURE TO FIND THE KLT MATRIX AND PC’s

        ADVANTAGE OF PCA

        MATLAB PCA  CODE FOR ECG DATA COMPRESSION.


ECG COMPRESSION - TRANSFORM TECHNIQUES - KLT

      Optimal Transform
      
      Least number of orthogonal functions
      
      De-correlates the Transform coefficients and minimizes the total Entropy.

2.  PCA?

PCA finds a linear projection of high dimensional data into a lower dimensional subspace such as: 

        The variance retained is maximized.
        
        The least square reconstruction error is minimized.
        
![image](https://user-images.githubusercontent.com/117635899/213463276-6c41df3a-f734-40d8-bfba-3361101db62c.png)

3. PCA  and KLT

        The goal is to transform a given data set X of dimension M to an alternative data set Y of smaller dimension L. 

        Equivalently, we are seeking to find the matrix Y, where Y is the Karhunen–Loeve transform (KLT) of matrix X


![image](https://user-images.githubusercontent.com/117635899/213463747-a41ef70e-4970-4954-9518-1484231526aa.png)


Karhunen-Loève Transform (KLT) takes a given collection of data (an input collection) and creates an orthogonal basis (the KLT basis) for the data. 

An orthogonal basis for a space V is a set of mutually orthogonal vectors (in other words, they are linearly independent) that span the space V. 

4. PROCEDURE TO FIND THE KLT MATRIX AND PC’s

Linearly transform an 𝑁×𝑑 matrix 𝑋 into an 𝑁×𝑚 matrix 𝑌

   Centralized the data (subtract the mean).
   
   Calculate the 𝑑×𝑑 covariance matrix: 
   
![image](https://user-images.githubusercontent.com/117635899/213464287-c0433412-4441-46fe-88c4-2ecbafdb4335.png)

![image](https://user-images.githubusercontent.com/117635899/213464356-4fe485ab-72b9-4799-bff5-b44d5c03b96e.png)

Calculate the eigenvectors of the covariance matrix (orthonormal).

Select m eigenvectors that correspond to the largest m eigenvalues to be the new basis. 

Pre-treatment of Data Matrix-Scaling

![image](https://user-images.githubusercontent.com/117635899/213464775-975c5ba7-c182-420f-b402-750e04315422.png)

![image](https://user-images.githubusercontent.com/117635899/213465255-c99ca55a-bc43-4709-9fd5-52260b3b72c6.png)


However, the mean values still remain different

Therefore mean-centering  as a second part of pre-data processing
Step1) Average value of each variable is calculated

Step2) Subtracted from the data


![image](https://user-images.githubusercontent.com/117635899/213465420-66c6c4a4-858a-491d-b3e8-ef7739ce2d3b.png)

![image](https://user-images.githubusercontent.com/117635899/213465579-b98aa59f-9469-4d17-acc4-50555de8cfdd.png)

![image](https://user-images.githubusercontent.com/117635899/213465700-dffa521f-162d-440a-870f-957e8c8f03cf.png)


Calculation of Covariance matrix(S) of Data Matrix(X)

![image](https://user-images.githubusercontent.com/117635899/213466575-429dbcee-3fab-4a40-ab2d-15404f9a85ee.png)

Property of Covariance matrix(S) of Data Matrix(X)

![image](https://user-images.githubusercontent.com/117635899/213466809-5afc9f83-6114-43d5-a20a-89c4eda154ab.png)

![image](https://user-images.githubusercontent.com/117635899/213466921-7c017179-557c-4b59-a3f2-a13e398de2d3.png)

Calculation of Eigenvalues of Covariance matrix (S)

![image](https://user-images.githubusercontent.com/117635899/213467074-cdc07f1f-0ed8-4c5f-aafb-133ed0e18293.png)

Calculation of the corresponding Eigenvectors of Covariance matrix (S)

![image](https://user-images.githubusercontent.com/117635899/213467292-712237c0-6d0b-43a5-aad8-dbb6079ab1aa.png)

![image](https://user-images.githubusercontent.com/117635899/213467522-6836b185-300a-4a1c-914a-8a7a116a6aa9.png)

![image](https://user-images.githubusercontent.com/117635899/213470643-30685646-37de-4c4a-8412-61dfa3131d7a.png)

![image](https://user-images.githubusercontent.com/117635899/213470695-f5aba628-55ac-49a6-9519-29b48fdeb37a.png)

Calculation of scores

![image](https://user-images.githubusercontent.com/117635899/213470772-1b3ea43f-8d15-4f2d-9b5c-9c1312a08076.png)

![image](https://user-images.githubusercontent.com/117635899/213470813-ac8e5c84-193d-48a3-97e1-e0c6e409690e.png)

Advantages of PCA

From this example, Let’s suppose. We need to reduce our system to only one variable.

Then we need to discard either variable X2 or X1. It means we will lose 56.74% or 43.26% of the total variance.

If, however, we convert our data set to scores on the first principal axis(PC 1), we lose only 12.12% of the variation in our data set.
This is a big advantage of PCA!!!

MATLAB PCA  CODE FOR ECG DATA  COMPRESSION.

This program illustrates the use of PCA on compressing multichannel ECG data.

• Load data

• Center the data (remove mean from each component)

• Compute PCA/KLT matrix

• Find principal components

• About the eigenvalues...

• Approximate all 15 ECG signals using first 3 principle components

• Approximate all 15 ECG signals using first 7 principle components







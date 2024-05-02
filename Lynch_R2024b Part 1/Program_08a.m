% Program 08a.m. - Grayscale Multifractal Image.
% Chapter 8 - Image Processing.
% Copyright Springer 2024. Stephen Lynch.
M=[0.3 0.4;0.25 0.05];
MM=[0.3*M 0.4*M;0.25*M 0.05*M];
% MM is a 4 by 4 matrix.
MM(1,4) % Gives the value in row 1, column 4.
for i=1:8 M=[0.3*M 0.4*M;0.25*M 0.05*M];end
% M is now a 512 by 512 matrix.
imtool(M);
% In the imtool window: Adjust the Contrast,
% Eliminate outliers and Adjust data.
% End Program_08a.m. 

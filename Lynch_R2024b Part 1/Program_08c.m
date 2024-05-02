% Program 08c.m. Binary Image and Counting Grains.
% Chapter 8 - Image Processing.
% Copyright Springer 2024. Stephen Lynch.
% Load the image of rice, look at its properties and view the image.
I=imread('rice.png');
whos I
imshow(I)
% Remove the rice grains using the strel function.
background=imopen(I,strel('disk',15));
% Subtract the background.
I2=imsubtract(I,background);
% Increase the image contrast.
I3=imadjust(I2);
% Convert the image to a binary image.
level=graythresh(I3);
bw=im2bw(I3,level);
% The binary image.
imshow(bw)
whos
% To determine the number of rice grains.
[labeled,numObjects]=bwlabel(bw,4);
numObjects
% Object properties in the image.
graindata=regionprops(labeled,'basic');
% To find the area of the largest grain and its label.
max([graindata.Area])
biggrain=find([graindata.Area]==404)
% Plot a histogram with numObjects bins of this data.
figure
hist([graindata.Area],numObjects)
set(gca,'FontSize',20);
% To find the centres of the grains of rice.
bw2 = imfill(bw,'holes');
L = bwlabel(bw2);
s = regionprops(L,'centroid');
centroids = cat(1,s.Centroid);
imtool(I)
hold(imgca,'on')
plot(imgca,centroids(:,1), centroids(:,2), 'r+')
hold(imgca,'off')
% End Program_08c.m.
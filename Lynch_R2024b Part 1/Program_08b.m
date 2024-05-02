% Program_08b: Number of white pixels.
% Chapter 8 - Image Processing.
% Copyright Springer 2025. Stephen Lynch.
figure
threshold=150;
P=imread('raccoon.png');
for i=1:1024
    for j=1:768
        if P(j,i,1)>threshold && P(j,i,2)>threshold...
                && P(j,i,3)>threshold
            WhiteP(j,i)=1;
        else WhiteP(j,i)=0;
        end
    end
end
Num_White_Pixels=sum(sum(WhiteP))
imshow(WhiteP);
% End Program_08b.
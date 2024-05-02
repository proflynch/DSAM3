% Program_07c.m: Simple Backpropagation.
% Chapter 7 - Neural Networks.
% Copyright Springer 2025. Stephen Lynch.
w11=0.2;w12=0.15;w21=0.25;w22=0.3;w13=0.15;w23=0.1;
b1=-1;b2=-1;b3=-1;
yt=0;eta=0.1;
x1=1;x2=1;
sigmoid=@(v) 1/(1+exp(-v));
h1=x1*w11+x2*w21+b1;
h2=x1*w12+x2*w22+b2;
o1=sigmoid(h1)*w13+sigmoid(h2)*w23+b3;
y=sigmoid(o1);
fprintf('y= %d\n',y);
% Backpropagate.
dErrdw13=(yt-y)*sigmoid(o1)*(1-sigmoid(o1))*sigmoid(h1);
w13=w13-eta*dErrdw13;
fprintf('w13= %d\n',w13);
dErrdw23=(yt-y)*sigmoid(o1)*(1-sigmoid(o1))*sigmoid(h2);
w23=w23-eta*dErrdw23;
fprintf('w23= %d\n',w23);
% End Program_07c.

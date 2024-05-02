% Program_07b.m: ANN for an OR Gate.
% Chapter 7 - Neural Networks.
% Copyright Springer 2025. Stephen Lynch.
w1=20;w2=20;b=-10;
sigmoid=@(v) 1/(1+exp(-v));
OR=@(x1,x2) sigmoid(x1*w1+x2*w2+b);
fprintf('OR(0,0)= %.15g\n',OR(0,0))
fprintf('OR(1,0)= %.15g\n',OR(1,0))
fprintf('OR(0,1)= %.15g\n',OR(0,1))
fprintf('OR(1,1)= %.15g\n',OR(1,1))
% End Program_07b.
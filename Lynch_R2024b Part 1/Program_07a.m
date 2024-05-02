% Program_07a: ANN for an AND Gate.
% Chapter 7 - Neural Networks.
% Copyright Springer 2025. Stephen Lynch.
w1=20;w2=20;b=-30;
sigmoid=@(v) 1/(1+exp(-v));
AND=@(x1,x2) sigmoid(x1*w1+x2*w2+b);
fprintf('AND(0,0)= %.15g\n',AND(0,0))
fprintf('AND(1,0)= %.15g\n',AND(1,0))
fprintf('AND(0,1)= %.15g\n',AND(0,1))
fprintf('AND(1,1)= %.15g\n',AND(1,1))
% End Program_07a.
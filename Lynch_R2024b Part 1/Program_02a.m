% Program_02a - Solving Recurrence Relations.
% Chapter 2 - Linear Discrete Dynamical Systems.
% Symbolic Math toolbox required.
% Copyright Springer 2025. Stephen Lynch.

% Solving a first order recurrence relation (Example 1).
% Commands are short enough for the Command Window.

xn=evalin(symengine,'solve(rec(x(n+1)=(1+(3/(100)))*x(n),x(n),{x(0)=10000}))')
n=5
savings=vpa(eval(xn),7)

%Solving a second order recurrence relation (Example 2(i)).
clear  
xn=evalin(symengine,'solve(rec(x(n+2)-x(n+1)=6*x(n),x(n),{x(0)=1,x(1)=2}))')

% Solving a characteristic equation (Example 2(iii)).
syms lambda
CE=lambda^2-lambda+1 
lambda=solve(CE)

% End of Program 02a.


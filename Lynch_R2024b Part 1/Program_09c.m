% Program_09c - Determining a series solution to an ODE.
% Series solution for a van der Pol system about x=0.
% Chapter 9 - Differential Equations.
% Copyright Springer 2025. Stephen Lynch.
syms x(t)
Dx = diff(x,t);
eqn = diff(x,2) + 2*(x(t)^2-1)*diff(x) + x == 0;
S = dsolve([eqn,x(0)==5,Dx(0)==0],'ExpansionPoint',0);
display(S)
% End Program_09c.
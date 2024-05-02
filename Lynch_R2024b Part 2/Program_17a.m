% Program_17a - Poincare return map.
% Chapter 17 - Poincare Maps and Nonautonomous Systems in the Plane.
% Copyright Springer 2023. Stephen Lynch.

% Solve a differential equation (Example 1).
syms r(t)
r=dsolve(diff(r,t)==-r(t)^2,r(0)==1);
display(r)
% List the first eight returns on the segment {y=0, 0<x<1}.
% There may be small inaccuracies due to the numerical solution.
deq=@(t,r)(-r^2);
options=odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,returns]=ode45(deq,0:2*pi:16*pi,1);
display(returns);
% End of Program_17a.
% Program_09a - Solving Simple Differential Equations.
% Chapter 9 - Differential Equations.
% Symbolic Math toolbox required.
% Copyright Springer 2025. Stephen Lynch.

% A separable ODE (Example 1).
syms t x(t)
soln1=dsolve(diff(x,t)==-t/x)

% Chemical kinetics (Example 8).
syms c(t) t
a=4;b=1;k=.00713;
soln2=dsolve(diff(c,t)==k*(a-c)^2*(b-c/2))
% Implicit solution is returned.

% A 3-D system (Exercise 7).
syms  a b c x(t) y(t) z(t) t
w=dsolve(diff(x,t)==-a*x,diff(y,t)==a*x-b*y,diff(z,t)==b*y);
xsol=w.x
ysol=w.y
zsol=w.z

% End of Program_09a.
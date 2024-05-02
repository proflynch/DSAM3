% Program_18c - Groebner basis.
% Chapter 18 - Local and Global Bifurcations.
% Copyright Springer 2025. Stephen Lynch.
syms x y
p=[x+y^2-x^3,4*x^3-12*x*y^2+x^4+2*x^2*y^2+y^4];
vars=[x,y,z];
gbasis(p,'MonomialOrder','lexicographic')
% End Program_18c.
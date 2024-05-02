% Program_18b - Division algorithm, multivariate polynomials.
% Chapter 18 - Local and Global Bifurcations.
% Copyright Springer 2025. Stephen Lynch.
syms x y
p=x^4+y^4+z^4;
d=[x^2+y,z^2*y-1,y-z^2]
[r,q]=polynomialReduce(p,d,'MonomialOrder','lexicographic')

syms x y
p=x^4+y^4+z^4;
d=[y-z^2,z^2*y-1,x^2+y]
[r,q]=polynomialReduce(p,d,'MonomialOrder','lexicographic')
% End Program_18b.
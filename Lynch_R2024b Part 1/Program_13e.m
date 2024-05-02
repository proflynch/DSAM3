% Program_13e - Perturbation Methods: Collect O(eps) terms.
% Chapter 13 - Limit Cycles.
% Copyright Springer 2025. Stephen Lynch.
% See Example 7.
syms eps
syms x0(t) x(t) x1(t) x2(t)
x(t) = x0(t) + eps * x1(t) + eps^2 * x2(t);
p = diff(x(t), t, t) + x(t) - eps * x(t)^3 == sym(0);
collect(p, eps)
% End Program_13e.
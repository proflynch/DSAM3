% Program_03c - Computing a Lyapunov Exponent for the Logistic Map.
% Chapter 3 - Nonlinear Discrete Dynamical Systems.
% Copyright Springer 2025. Stephen Lynch.

% Lyapunov exponent when mu=4 (Table 3.1).
clear;
mu=4;x=0.1;xo=x;N=50000;
x=zeros(1,N);
itermax=N;
    for n=1:itermax
        xn=mu*xo*(1-xo);
        x(n)=xn;
        xo=xn;
    end

Liap_exp=vpa(sum(log(abs(mu.*(1-2.*x))))/itermax,6)

% End of Program 03c.

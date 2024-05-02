% Program_15b - Finding critical points and bifurcation curve.
% Chapter 15 - Bifurcation Theory.
% Copyright Springer 2023. Stephen Lynch.

% Critical points for y=mu*x-x^3.
syms x y mu
[x,y]=solve(mu*x-x^3==0,-y==0)

% Plot a simple bifurcation diagram (Fig. 15.11).
r=0:.01:2;
mu=.28*r.^6-r.^4+r.^2;
plot(mu,r)
fsize=15;
xlabel('\mu','Fontsize',fsize);
ylabel('r','Fontsize',fsize);

% End Program_15b.
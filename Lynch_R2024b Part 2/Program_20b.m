% Program_20b: Solve the delayed predator-prey model.
% See Figure 20.2(d).
% Chapter 20 - Delay Differential Equations.
% Copyright Springer 2025. Stephen Lynch.
lags=1.5;tstart=500;
tspan=[0 500];
sol=dde23(@ddefun,lags,@history,tspan);
plot(sol.y(1,tstart:end),sol.y(2,tstart:end),'b')
xlabel('x(t)');
ylabel('y(t)');
set(gca,'FontSize',20);
axis([0 2 0 5])
function dxdt = ddefun(~,x,Z)
  xlag1=Z(:,1);
  dxdt = [x(1)*(1-xlag1(1)-xlag1(2)); 
          x(2)*(-1+2*xlag1(1)-xlag1(2))];
end
function s=history(~)
  s=ones(2,1);
end
% End Program_20b.
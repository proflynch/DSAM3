% Program_20c: The Lang-Kobayashi Equations.
% See Figure 20.8.
% Chapter 20 - Delay Differential Equations.
% Copyright Springer 2024. Stephen Lynch.
lags=100;Tmax=1000;
tspan=[0 Tmax];
sol=dde23(@ddefun,lags,@history,tspan);
plot(sol.x,(abs(sol.y)),'linewidth',2)
legend('|E(t)|','|N(t)|')
xlabel('Time');
set(gca,'FontSize',20);
axis([0 Tmax 0 3])
function dxdt = ddefun(~,x,Z)
  xlag1=Z(:,1);
  dxdt = [((1+4i)/2)*x(2)*x(1)+0.1*xlag1(1); 
          (1-x(2)-(1+x(2))*abs(x(1))^2)/200];
end
function s=history(~)
  %s=ones(2,1);
  s=[1;0.2];
end
% End Program_20c.
% Program_20a: Solve the DDE, dxdt=-x(t-1), 
% with initial history x(t)=t^2, on [-1,0].
% Chapter 20 - Delay Differential Equations.
% Copyright Springer 2025. Stephen Lynch.
% Numerical Solution. See Figure 20.1(c).
lags=1;tspan=[0 10];
hold on
set(gca,'FontSize',20);
axis([-1 10 -0.5 0.5]);
sol = dde23(@ddefun, lags, @history, tspan);
plot(sol.x,sol.y,'b-o')
xlabel('Time (s)');
ylabel('x(t)');
t=-1:0.1:0;
plot(t,t.^2,'r-o')
legend('x(t)','history')
hold off
function dxdt = ddefun(~,~,X)
  xlag1 = -X(:,1);
  dxdt = [xlag1(1)];
end
function s = history(t)
  s = t^2;
end
% End Program_20a.

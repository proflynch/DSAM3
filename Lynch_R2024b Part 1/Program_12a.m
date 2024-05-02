% Program_12a: Predator-Prey Model.
% Phase portrait and time series solutions.
% Chapter 12 - Interacting Species.
% Copyright Springer 2025. Stephen Lynch.
hold on
Tmax=200;
sys = @(t,x) [x(1)*(1-x(1)/7)-6*x(1)*x(2)/(7+7*x(1));...
    0.2*x(2)*(1-.5*x(2)/x(1))];
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xa]=ode45(sys,[0 Tmax],[7.1 .1],options);
plot(xa(:,1),xa(:,2))
axis([0 8 0 5]);
set(gca,'FontSize',20);
fsize=15;
set(gca,'XTick',0:2:8)
set(gca,'YTick',0:2.5:5)
xlabel('x(t)')
ylabel('y(t)')
hold off
figure
hold on
set(gca,'FontSize',20);
plot(t,xa(:,1),'r')
plot(t,xa(:,2),'b')
legend('prey','predator')
axis([0 Tmax 0 8])
set(gca,'XTick',0:50:Tmax)
set(gca,'YTick',0:2:8)
xlabel('Time')
ylabel('Population')
hold off
% End Program_12a.
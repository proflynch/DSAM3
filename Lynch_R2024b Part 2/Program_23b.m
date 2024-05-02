% Program_23b - Fitzhugh-Nagumo Limit Cycle.
% Chapter 23 - Binary Oscillator Computing.
% Copyright Springer 2025. Stephen Lynch.
a=0.1;b=0.1;c=0.1;Input=1.5;
Tmax=200;
sys=@(t,x) [-x(2)-x(1)*(x(1)-a)*(x(1)-1)+Input;c*(x(1)-b*x(2))];
options=odeset('RelTol',1e-8,'AbsTol',1e-10);
[t,xs]=ode45(sys,[0 Tmax],[0.5 1.474],options);
subplot(1,2,1)
plot(xs(:,1),xs(:,2),'LineWidth',2)
axis([-0.5 1 1 2])
set(gca,'FontSize',20);
set(gca,'xtick',-0.5:0.5:1)
set(gca,'ytick',1:0.25:2)
xlabel('v(t)')
ylabel('w(t)')
subplot(1,2,2)
plot(t,xs(:,1),t,xs(:,2),'LineWidth',2)
legend('v(t)','w(t)','Location','best')
axis([0 Tmax -0.5 2])
set(gca,'FontSize',20);
set(gca,'xtick',0:50:Tmax)
set(gca,'ytick',-0.5:0.5:2)
xlabel('Time')
ylabel('Voltage (mV)')
% End Program_23b.
% Program_17c - Phase portraits for nonautonomous systems.
% Chapter 17 - Poincare Maps and Nonautonomous Systems in the Plane.
% Copyright Springer 2025. Stephen Lynch.

% Phase portrait for the Duffing system.
deq=@(t,x) [x(2);x(1)-0.3*x(2)-(x(1))^3+0.5*cos(1.25*t)]; 
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xx]=ode45(deq,[0 200],[1,0],options);
plot(xx(:,1),xx(:,2))
set(gca,'FontSize',20);
axis([-2 2 -2 2])
xlabel('x')
ylabel('y')
% End of Program_17c.
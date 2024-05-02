% Program_16b - 3-D Phase Portrait, Chua's chaotic attractor.
% Chapter 16 - Three-Dimensional Autonomous Systems and Chaos.
% Copyright Springer 2025. Stephen Lynch.

Chua=@(t,x) [15*(x(2)-x(1)-(-(5/7)*x(1)+(1/2)*(-(8/7)-(-5/7))*(abs(x(1)+1)-abs(x(1)-1))));...
    x(1)-x(2)+x(3);...
    -25.58*x(2)]; 
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xb]=ode45(Chua,[0 100],[-1.6,0,1.6],options);
plot3(xb(:,1),xb(:,2),xb(:,3))
title('Chua`s Double Scroll Attractor')
set(gca,'FontSize',20);
xlabel('x(t)');
ylabel('y(t)');
zlabel('z(t)');
% End of Program_16b.


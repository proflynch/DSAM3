% Program_16a - 3-D Phase Portrait (Lorenz).
% Chapter 16 - Three-Dimensional Autonomous Systems and Chaos.
% You can rotate the 3D image and zoom in.
% Copyright Springer 2023. Stephen Lynch.

sigma=10;r=28;b=8/3;
Lorenz=@(t,x) [sigma*(x(2)-x(1));r*x(1)-x(2)-x(1)*x(3);x(1)*x(2)-b*x(3)]; 
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xa]=ode45(Lorenz,[0 100],[15,20,30],options);
plot3(xa(:,1),xa(:,2),xa(:,3))
title('The Lorenz Attractor')
set(gca,'FontSize',20);
xlabel('x(t)');
ylabel('y(t)');
zlabel('z(t)');
% End of Program_16a.


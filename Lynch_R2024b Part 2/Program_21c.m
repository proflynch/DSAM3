% Program_21c.m: Chaos Synchronization.
% Chapter 21 - Chaos Control and Synchronization.
% Copyright Springer 2025. Stephen Lynch.
% Here y2=x(4) and y3=x(5).

sigma=16;r=45.92;b=4;
Lorenz_Synch=@(t,x) [...
                     % Driver.
                     sigma*(x(2)-x(1));r*x(1)-x(2)-x(1)*x(3);x(1)*x(2)-b*x(3);...
                     % Response.
                    -x(1)*x(5)+r*x(1)-x(4);x(1)*x(4)-b*x(5)]; 
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xa]=ode45(Lorenz_Synch,[0 100],[15,20,30,20,30],options);
plot(xa(:,2),xa(:,4))
title('Synchronization')
set(gca,'FontSize',20);
xlabel('x_2(t)');
ylabel('y_2(t)');
% End of Program_21c.


% Program_16e - Time series of Belousov-Zhabotinski reaction.
% Chapter 16 - Three-Dimensional Autonomous Systems and Chaos.
% See URL: http://online.redwoods.edu/INSTRUCT/darnold/DEProj/Sp98/Gabe/bzreact.htm
% Copyright Springer 2025. Stephen Lynch.

A=0.06;B=0.02;f=1;
k1=1.28;k2=2.4e6;k3=33.6;k4=3e3;kc=1;
epsilon=(kc*B)/(k3*A);
epsilondash=(2*kc*k4*B)/(k2*k3*A);
q=(2*k1*k4*B)/(k2*k3*A);
BZReaction=@(t,x) [(q*x(2)-x(1)*x(2)+x(1)*(1-x(1)))/epsilon;...
    (-q*x(2)-x(1)*x(2)+f*x(3))/epsilondash;...
    x(1)-x(3)]; 
options = odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,xa]=ode23s(BZReaction,[0 50],[0,0,0.1],options);
subplot(3,1,1)
plot(t,xa(:,1))
set(gca,'FontSize',20);
title('Relative concentration of bromous acid')
xlabel('t');
ylabel('x(t)');
subplot(3,1,2)
plot(t,xa(:,2),'r')
set(gca,'FontSize',20);
title('Relative concentration of bromide ions')
xlabel('t');
ylabel('y(t)');
subplot(3,1,3)
plot(t,xa(:,3),'m')
set(gca,'FontSize',20);
title('Relative concentration of cerium ions')
xlabel('t');
ylabel('z(t)');
% End of Program_16e.


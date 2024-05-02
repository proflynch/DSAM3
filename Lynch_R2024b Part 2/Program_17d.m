% Program_17d - Poincare section for the Duffing system.
% Chapter 17 - Poincare Maps and Nonautonomous Systems in the Plane.
% Copyright Springer 2025. Stephen Lynch.

% The program may take a few minutes to compile.
% Poincare section for the Duffing system (Fig. 17.11).
clear
Gamma=0.5;
deq=@(t,x) [x(2);x(1)-0.3*x(2)-(x(1))^3+Gamma*cos(1.25*t)];
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xx]=ode45(deq,0:(2/1.25)*pi:(6000/1.25)*pi,[1,0]);
plot(xx(:,1),xx(:,2),'.','MarkerSize',1)
set(gca,'FontSize',20);
axis([-2 2 -2 2])
xlabel('x')
ylabel('y')
title('Poincare Section of the Duffing System')
% End of Program_17d.
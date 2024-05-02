% Program_09b - Solution Curves, Initial Value Problem.
% Chapter 9 - Differential Equations.
% Copyright Springer 2025. Stephen Lynch.

% Solve the differential equation and plot 2 solution curves.
% Figure 9.3.
clear;figure;
deqn1=@(t,P) P(1)*(100-P(1))/1000;
[t,P1]=ode45(deqn1,[0 100],50);
[t1,P2]=ode45(deqn1,[0 100],150);
hold on
plot(t,P1(:,1))
plot(t1,P2(:,1))
axis([0 100 0 200])
set(gca,'FontSize',20);
set(gca,'XTick',0:20:100)
set(gca,'YTick',0:50:200)
xlabel('t')
ylabel('P')
hold off
% End of Program_09b.
% Program_13a - Limit cycle of van der Pol.
% Chapter 13 - Limit Cycles.
% Copyright Springer 2025. Stephen Lynch.

% Limit cycle of a van der Pol system (Figure 13.2).
% IMPORTANT - ensure vectorfield.m is in directory.
clear;figure;
sys = @(t,x) [x(2);-x(1)-5*x(2)*((x(1))^2-1)]; 
hold on;
vectorfield(sys,-3:.3:3,-10:1.3:10);
[t,xs] = ode45(sys,[0 30],[2 1]);
plot(xs(:,1),xs(:,2),'b')      
hold off;
axis([-3 3 -10 10])
set(gca,'FontSize',20);
set(gca,'XTick',-3:1:3)
set(gca,'YTick',-10:5:10)
xlabel('x(t)')
ylabel('y(t)')
hold off
% End of Program_13a.
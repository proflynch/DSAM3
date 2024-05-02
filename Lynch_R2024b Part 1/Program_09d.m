% Program_09d - Numerical against series solution.
% Chapter 9 - Differential Equations.
% Copyright Springer 2025. Stephen Lynch.

% The van der Pol equation (Figure 9.6).
hold on
deqn=@(t,x) [x(2);-x(1)-2*(x(1)^2-1)*x(2)];
[t,xa]=ode45(deqn,[0 50],[5 0]);
plot(t,xa(:,1),'b')
axis([0 0.08 4.994 5])
set(gca,'FontSize',20);
set(gca,'xtick',0:0.02:0.08)
set(gca,'ytick',4.994:0.001:5)
xlabel('t')
ylabel('x(t)')
plot(t,5-5*t.^2/2+40*t.^3-11515*t.^4/24+9183*t.^5/2)
hold off
% End of Program_09d.
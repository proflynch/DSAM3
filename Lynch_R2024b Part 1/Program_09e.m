% Program_09e - Solving Simple Differential Equations.
% Chapter 9 - Differential Equations.
% Copyright Springer 2025. Stephen Lynch.

% Chemical kinetics (Example 10, Figure 9.7).
k=0.00713;
deqn = @(t,c) k*(4-c)^2*(1-c/2); 
[t,ca]=ode45(deqn,[0 400],0);
plot(t,ca(:,1))
set(gca,'FontSize',20);
axis([0 400 0 3])
fsize=15;
set(gca,'XTick',0:100:400)
set(gca,'YTick',0:1:3)
xlabel('t')
ylabel('c(t)')
hold off
% End of Program_09e.
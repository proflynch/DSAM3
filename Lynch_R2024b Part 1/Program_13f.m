% Program_13f - Perturbation Methods
% Chapter 13 - Limit Cycles.
% Copyright Springer 2025. Stephen Lynch.

% See Example 7. 
% Solve the Order epsilon ODE.
syms x(t);
Dx=diff(x);
deq1=dsolve(diff(x,2)+x(t)==cos(t)^3,x(0)==0,Dx(0)==0);
O_epsilon=simplify(deq1)

% Numerical solution of the Duffing equation.
epsilon=0.01;
deq2=@(t,x) [x(2);-x(1)+epsilon*x(1)^3];
[t,xa]=ode23s(deq2,[0,100],[1,0]);

% Plot x_N-x_0: see Figure 13.9. 
subplot(2,1,1)
plot(t,xa(:,1)-cos(t))
title('Error: x_N-x_0')
ylim=0.5;
axis([0 100 -ylim ylim])
set(gca,'FontSize',20);
set(gca,'XTick',0:10:100)
set(gca,'YTick',-ylim:0.2:ylim)
xlabel('x(t)')
ylabel('y(t)')
% Plot x_N-x_P: see Figure 13.10.
subplot(2,1,2)
plot(t,xa(:,1)-cos(t)-epsilon*(cos(t)/8 - cos(t).^3/8 + (3*t.*sin(t))/8))
title('Error: x_N-x_P')
ylim=0.18;
axis([0 100 -ylim ylim])
set(gca,'FontSize',20);
set(gca,'XTick',0:10:100)
set(gca,'YTick',-ylim:0.09:ylim)
xlabel('x(t)')
ylabel('y(t)')
% End of Program_13f.
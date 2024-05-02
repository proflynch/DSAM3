% Program_13d - Two limit cycles in an economic Kaldor model.
% Chapter 13 - Limit Cycles.
% Copyright Springer 2025. Stephen Lynch.

% J. Grasman and J.J. Wentzel, Co-existence of a limit cycle and an
% equilibrium in Kaldor's business cycle model and its consequences,
% J. Economic Behavior and Organization 24, 369-377 (1994).
% NOTE: There is an error in the equations in the paper - corrected below.

clear;figure;
hold on
% Plot the isoclines.
fimplicit(@(x,y)(25*2^(-1/(0.015*x+0.00001)^2)+...
    0.05*x+5*(320/y)^3-0.282*x),[10 100 200 500])
fimplicit(@(x,y)(25*2^(-1/(0.015*x+0.00001)^2)+...
    0.05*x+5*(320/y)^3-0.05*y),[10 100 200 500])
alpha = 3; delta = 0.05; s = 0.282;
% The Kaldor business cycle model.
sys = @(t,x)[alpha*(25*2^(-1/(0.015*x(1)+0.00001)^2)+...
    0.05*x(1)+5*(320/x(2))^3-s*x(1)); 
    25*2^(-1/(0.015*x(1)+0.00001)^2)+...
    0.05*x(1)+5*(320/x(2))^3-delta*x(2)];

% Plot the stable limit cycle.
[~,xs] = ode23s(sys,[0 100],[25 300]);         
plot(xs(:,1),xs(:,2),'r') 
% Plot the unstable limit cycle.
[t,xb] = ode23s(sys,[0 -100],[60 355]);        
plot(xb(:,1),xb(:,2),'b') 

axis([0 100 200 500])
set(gca,'FontSize',20);
set(gca,'XTick',0:20:100)
set(gca,'YTick',200:50:500)
title('Two limit cycles in a Kaldor economic model')
xlabel('y')
ylabel('k')
hold off
% End of Program_13d.
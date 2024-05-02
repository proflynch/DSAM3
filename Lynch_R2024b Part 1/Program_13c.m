% Program_13c - Non-convex limit cycle.
% Chapter 13 - Limit Cycles.
% Copyright Springer 2025. Stephen Lynch.

% Non-convex limit cycle of a Lienard system (Figure 11.8).
clear;figure;
hold on
a2=90;a4=-882;a6=2598.4;a8=-3359.997;a10=2133.34;a12=-651.638;a14=76.38;
sys1=@(t,x) [x(2);-x(1)-x(2)*(a2*(x(1))^2+a4*(x(1))^4+a6*(x(1))^6+a8*(x(1))^8+a10*(x(1))^10+a12*(x(1))^12+a14*(x(1))^14)]; 
[t,xt] = ode45(sys1,[0 30],[1.4 0]);
plot(xt(:,1),xt(:,2))      
axis([-3 3 -3 3])
set(gca,'FontSize',20);
set(gca,'XTick',-3:1:3)
set(gca,'YTick',-3:1:3)
xlabel('x(t)')
ylabel('y(t)')
% End of Program_13c.
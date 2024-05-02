% Program_21a: Controlling Chaos in the Logistic Map.
% Chapter 21 - Chaos Control and Synchronization.
% Copyright Springer 2025. Stephen Lynch.
% Control to a period-2 orbit (Figure 21.3(b)).
clear
itermax=200;
mu=4;k=0.217;x=zeros(1,itermax);
x(1)=0.6;
for n=1:2:itermax
    x(n+1)=mu*x(n)*(1-x(n));
    x(n+2)=mu*x(n+1)*(1-x(n+1));
    % Switch on the control when n>60.
    % Nudge the system every second iterate.
    if n>60
    x(n+1)=k*mu*x(n)*(1-x(n));
    x(n+2)=mu*x(n+1)*(1-x(n+1));
    end
end
hold on
plot(1:itermax,x(1:itermax))
plot(1:itermax,x(1:itermax),'o')
set(gca,'FontSize',20);
set(gca,'XTick',0:50:itermax)
set(gca,'YTick',[0,1])
xlabel('n')
ylabel('\itx_n')
hold off
% End Program_21a.
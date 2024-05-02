% Program_21b: Controlling Chaos in the Henon Map.
% Chapter 21 - Chaos Control and Synchronization.
% Copyright Springer 2025. Stephen Lynch.
% Control to a period-1 orbit (Figure 21.6(a)).
clear
alpha=1.2;beta=0.4;
k1=-1.8;k2=1.2;              % The regulator poles.
xstar=0.8358;ystar=xstar;    % The point to be stabilized.
N=400;x=zeros(1,N);y=zeros(1,N);rsqr=zeros(1,N);
x(1)=0.5;y(1)=0.6;           % Initial values.
rsqr(1)=(x(1))^2+(y(1))^2;
for n=1:N
    if n>198                 % Check point is in control region.
    x(n+1)=(-k1*(x(n)-xstar)-k2*(y(n)-ystar)+alpha)+beta*y(n)-(x(n))^2;
    y(n+1)=x(n);
    else
    x(n+1)=alpha+beta*y(n)-(x(n))^2;
    y(n+1)=x(n);
    end
    rsqr(n+1)=(x(n+1))^2+(y(n+1))^2;
end
hold on
axis([0 N 0 6])
plot(1:N,rsqr(1:N))
plot(1:N,rsqr(1:N),'o')
set(gca,'FontSize',20);
set(gca,'XTick',0:50:N)
set(gca,'ytick',[0,6])
xlabel('n')
ylabel('\it{r^2}')
hold off
% End Program_21b.
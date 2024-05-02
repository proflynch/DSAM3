% Program_03b - Graphical Iteration of the Logistic Map.
% Chapter 3 - Nonlinear Discrete Dynamical Systems.
% Copyright Springer 2023. Stephen Lynch.

clear;
figure;
fsize=15;
nmax=100;halfm=nmax/2;
t=zeros(1,nmax);t1=zeros(1,nmax);t2=zeros(1,nmax);
t(1)=0.2;
mu=3.8282;
axis([0 1 0 1]);
for n=1:nmax
    t(n+1)=mu*t(n)*(1-t(n));
end

for n=1:halfm
    t1(2*n-1)=t(n);
    t1(2*n)=t(n);
end

t2(1)=0;t2(2)=t(2);
for n=2:halfm
    t2(2*n-1)=t(n);
    t2(2*n)=t(n+1);
end
hold on
plot(t1,t2,'r');
fplot(@(x)3.8282.*x.*(1-x),[0 1]);
x=[0 1];y=[0 1];
plot(x,y,'g');
hold off
%title('Graphical iteration for the tent map')
set(gca,'xtick',[0 1],'Fontsize',fsize)
set(gca,'ytick',[0 1],'Fontsize',fsize)
xlabel('x','Fontsize',fsize)
ylabel('f_{\mu}','Fontsize',fsize)

% End of Program 03b.

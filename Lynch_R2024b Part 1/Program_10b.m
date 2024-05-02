% Program_10b.m: RK4 Method for an IVP.
% Chapter 10 - Numerical Methods for ODEs and PDEs.
% Copyright Springer 2025. Stephen Lynch.
f=@(x,y) 1-y;
h=0.1;y0=2;xmax=1;
x=0:h:xmax;steps=1/h;
y=zeros(1,steps+1);
y(1)=y0;
for n=1:steps
    k1=h*f(x(n),y(n));
    k2=h*f(x(n)+h/2,y(n)+k1/2);
    k3=h*f(x(n)+h/2,y(n)+k2/2);
    k4=h*f(x(n)+h,y(n)+k3);
    k=(k1+2*k2+2*k3+k4)/6;
    y(n+1)=y(n)+k;
end
ysol=exp(-x)+1;
plot(x,y,'.-',x,ysol,'r');
grid on;grid minor;
axis equal;axis tight;
legend('Numerical Solution','Analytical Solution')
set(gca,'FontSize',20);
xticks(0:.1:1)
xlabel('x');
ylabel('y(x)');
% End Program_10b.
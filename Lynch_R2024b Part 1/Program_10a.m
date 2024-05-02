% Program_10a.m: Euler's Method for an IVP.
% Chapter 10 - Numerical Methods for ODEs and PDEs.
% Copyright Springer 2025. Stephen Lynch.
f=@(x,y) 1-y;
h=0.1;y0=2;xmax=1;
x=0:h:xmax;steps=1/h;
y=zeros(1,steps+1);
y(1)=y0;
for n=1:steps
    y(n+1)=y(n)+h*f(x(n),y(n));
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
% End Program_10a.
% Program_04d: Newton Fractal.
% Chapter 4 - Complex Iterative Maps.
% Copyright Springer 2025. Stephen Lynch.
figure;
% Roots are r1,r2,r3.
r1=1;r2=(-1+1i*sqrt(3))/2;r3=(-1-1i*sqrt(3))/2;
xmax=2;ymax=2;res=0.001;
% Anonymous functions.
f=@(z) z.^3-1;
df=@(z) 3*z.^2;
x=-xmax:res:xmax;
y=-ymax:res:ymax;
[X,Y]=meshgrid(x,y);
Z=X+1i*Y;
iters = 20;
for i=1:iters
    Z=Z-f(Z)./df(Z);
end
eps=0.00001;
Z1=abs(Z-r1)<eps;Z2=abs(Z-r2)<eps;Z3=abs(Z-r3)<eps; Z4=~(Z1+Z2+Z3);
map=[1 0 0; 0 1 0; 0 0 1; 0 0 0];
colormap(map);
Z=Z1+2*Z2+3*Z3+4*Z4;
image([-xmax xmax],[-ymax ymax],Z);
set(gca,'YDir','normal');
set(gca,'FontSize',20);
axis equal;axis tight;
set(gca,'XTick',-xmax:1:xmax)
set(gca,'YTick',-ymax:1:ymax)
xlabel('Re(z)')
ylabel('Im(z)')
title('Newton Fractal')
% End of Program_04d.
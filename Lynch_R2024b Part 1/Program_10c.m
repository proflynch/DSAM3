% Program_10c.m: The heat equation. Modeling heat in a rod.
% Chapter 10 - Numerical Methods for ODEs and PDEs.
% Copyright Springer 2025. Stephen Lynch.
nt=1000;nx=51;tmax=1;xmax=1;alpha=0.1;
dt=tmax/(nt-1);dx=xmax/(nx-1);
U=zeros(nx,nt);x=0:dx:xmax;t=0:dt:tmax;
U(:,1)=sin(pi*x);   % Initial conditions.
U(1,:)=0;U(nx,:)=0; % Boundary conditions.
r=alpha*dt/dx^2;
% Vectorized computation.
for n=1:nt-1
    U(2:nx-1,n+1)=U(2:nx-1,n)+r*(U(3:nx,n)-2*U(2:nx-1,n)+ ...
        U(1:nx-2,n));
end
% plot(x,U)
[T,X] = meshgrid(t,x);
surf(T,X,U,'EdgeColor','none')
colormap jet;
set(gca,'FontSize',20);
xticks(0:.2:1)
xlabel('t');
ylabel('x');
zlabel('U(t,x)')
% End Program_10c.


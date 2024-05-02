% Program_03f - Iteration of the Henon Map.
% Chapter 3 - Nonlinear Discrete Dynamical Systems.
% Copyright Springer 2025. Stephen Lynch.

% A chaotic attractor for the Henon map (Figure 3.22(b)).
figure;a=1.2;b=0.4;N=6000;
x=zeros(1,N);
y=zeros(1,N);
x(1)=0.1;
y(1)=0;
for n=1:N
    x(n+1)=1+y(n)-a*(x(n))^2;
    y(n+1)=b*x(n);
end 
axis([-1 2 -1 1])
plot(x(50:N),y(50:N),'.','MarkerSize',1);
fsize=15;
set(gca,'XTick',-1:0.5:1,'FontSize',fsize)
set(gca,'YTick',-1:0.5:2,'FontSize',fsize)
xlabel('\itx','FontSize',fsize)
ylabel('\ity','FontSize',fsize)

% End of Program_03f.
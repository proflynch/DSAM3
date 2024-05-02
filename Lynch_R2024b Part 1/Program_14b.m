% Program_14b: Lyapunov function for a Hopfield network.
% Chapter 14 - Hamiltonian Systems, Lyapunov Functions, and Stability.
% Copyright Springer 2025. Stephen Lynch.
% See Figure 14.8.
figure
x=-1:.1:1;y=-1:.1:1;[X,Y]=meshgrid(x,y);
Z=-(X.^2+Y.^2)-4*(log(cos(pi*X/2))+log(cos(pi*Y/2)))./(0.7*pi^2);
mesh(X,Y,Z)
axis([-1 1 -1 1 -0.2 0])
title('Surface plot')
set(gca,'XTick',-1:0.5:1)
set(gca,'YTick',-1:0.5:1)
set(gca,'ZTick',-0.2:0.1:0)
xlabel('a_1')
ylabel('a_2')
set(gca,'FontSize',20);
figure
x=-1:.01:1;y=-1:.01:1;[X,Y]=meshgrid(x,y);
Z=-(X.^2+Y.^2)-4*(log(cos(pi*X/2))+log(cos(pi*Y/2)))./(0.7*pi^2);
contour(X,Y,Z,-1:.01:1)
title('Contour plot')
set(gca,'XTick',-1:0.5:1)
set(gca,'YTick',-1:0.5:1)
xlabel('a_1')
ylabel('a_2')
set(gca,'FontSize',20);
% End of Program_14b.
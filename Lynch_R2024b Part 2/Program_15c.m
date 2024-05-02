% Program_15c - Hopf Bifurcation movie.
% Chapter 15 - Bifurcations of Nonlinear Systems in the Plane.
% Copyright Springer 2025. Stephen Lynch.

% Animation of Hopf bifurcation of a limit cycle from the origin.
clear
global mu
for j = 1:48 
    mu=j/40-1;   % mu goes from -1 to 0.2.
    options = odeset('RelTol',1e-4,'AbsTol',1e-4);
    x0=0.5;y0=0.5;
    [t,x]=ode45(@Hopf,[0 80],[x0 y0],options);  
    plot(x(:,1),x(:,2),'b');  
    set(gca,'FontSize',20);
    axis([-1 1 -1 1]);
    set(gca,'XTick',-1:0.2:1);
    set(gca,'YTick',-1:0.2:1);
    xlabel('x(t)');
    ylabel('y(t)');
    title('Hopf Bifurcation');
    F(j) = getframe;
end
movie(F,5)
function sys=Hopf(~,x)
global mu
X=x(1,:);  
Y=x(2,:);  
% Define the system.
P=Y+mu*X-X.*Y.^2;        
Q=mu*Y-X-Y.^3; 
sys=[P;Q]; 
end
% End of Program_15c.



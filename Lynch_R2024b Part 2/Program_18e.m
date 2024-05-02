% Program_18e - Homoclinic bifurcation animation.
% Chapter 18 - Local and Global Bifurcations.
% Copyright Springer 2025. Stephen Lynch.

% Animation of Hopf bifurcation of a limit cycle from the origin.
global mu
for j = 1:60 
    F(j) = getframe;
    mu=j/100-0.3;   % mu goes from -0.3 to 0.3.
options = odeset('RelTol',1e-8,'AbsTol',1e-8);
x0=0.1;y0=0;
[t,x]=ode45(@vanderPol,[0 20],[x0 y0],options);  
plot(x(:,1),x(:,2),'b');  
axis([-1.2 1.2 -1 1]);
fsize=15;
set(gca,'XTick',-1.2:0.2:1.2,'FontSize',fsize);
set(gca,'YTick',-1:0.2:1,'FontSize',fsize);
xlabel('x(t)','FontSize',fsize);
ylabel('y(t)','FontSize',fsize); 
 F(j) = getframe;
end
movie(F,5)

function sys=vanderPol(~,x)
global mu
X=x(1,:);  
Y=x(2,:);  
% Define the system.
P=Y+10.*X.*(0.1-Y.^2);        
Q=-X+mu; 
sys=[P;Q];
end
% End of Program_18e.
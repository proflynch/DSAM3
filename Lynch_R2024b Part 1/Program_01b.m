% Program 01b - Plots and differential equations.
% Chapter 1 - A Tutorial Introduction to MATLAB and the Symbolic Math Package.
% Copyright Springer 2025. Stephen Lynch.

% These commands should be run in the Command Window.
% Copy the commands into the Command Window.

clear
% Plot a simple function.
x=-2:.01:2;
plot(x,x.^2)                            

% Plot two curves on one graph and label them.
t=0:.1:100;
y1=exp(-.1*t).*cos(t);y2=cos(t);
plot(t,y1,t,y2),legend('y1','y2')       

% Plotting with fplot.
syms t x 
fplot(x^2,[-2,2])                    
fplot(exp(-t)*sin(t)),xlabel('time'),ylabel('current'),title('decay')

% 3-D plots on a 50x50 grid.
syms x y
fcontour(y^2/2-x^2/2+x^4/4,[-2,2],'MeshDensity',50)
fsurf(y^2/2-x^2/2+x^4/4,[-2,2],'MeshDensity',50)
fsurf(y^2/2-x^2/2+x^4/4,[-2,2],'MeshDensity',50,'ShowContours','on')

% Parametric plot.
fplot(t^3-4*t,t^2,[-3,3])

% 3-D parametric plot.
fplot3(sin(t),cos(t),t,[-10,10])

% Implicit plot.
fimplicit(2*x^2+3*y^2-12)

% Symbolic solutions to ODEs.
syms x(t);
dsolve(diff(x,t)==-x/t)

% Initial value problem.
dsolve(diff(x,t)==-x/t,x(1)==2)

% Second order ODE.
syms y(t);
Dy=diff(y);
dsolve(diff(y,2)+5*diff(y,t)+6*y(t)==10*sin(t),y(0)==0,Dy(0)==1)

% Linear systems of ODEs.
syms x(t) y(t)
deqns=[diff(x,t)==y,diff(y,t)==-x];
dsolve(deqns)

% A system with initial conditions.
dsolve(deqns,x(0)==1,y(0)==2)

% A 3-D linear system.
syms x(t) y(t) z(t)
deqns3=[diff(x,t)==x,diff(y,t)==y,diff(z,t)==-z];
dsolve(deqns3)

% Numerical solutions to ODEs.
deq1=@(t,x) x(1)*(.1-.01*x(1));
[t,xa]=ode45(deq1,[0 100],50);
plot(t,xa(:,1))

% A 2-D system.
deq2=@(t,x) [.1*x(1)+x(2);-x(1)+.1*x(2)];
[~,xb]=ode45(deq2,[0 50],[.01,0]);
plot(xb(:,1),xb(:,2))

% A 3-D system.
deq3=@(t,x) [x(3)-x(1);-x(2);x(3)-17*x(1)+16];
[~,xc]=ode45(deq3,[0 20],[.8,.8,.8]);
plot3(xc(:,1),xc(:,2),xc(:,3))

% A stiff system.
deq4=@(t,x) [x(2);1000*(1-(x(1))^2)*x(2)-x(1)];
[t,xd]=ode23s(deq4,[0 3000],[.01,0]);
plot(xd(:,1),xd(:,2))

% x versus t.
plot(t,xd(:,1))

% End of Program 01b.







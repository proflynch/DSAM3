% Program 17f - Bifurcation diagram for the Duffing equation.
% Chapter 17 - Poincare Maps and Nonautonomous Systems in the Plane.
% Copyright Springer 2025. Stephen Lynch.
clear
global Gamma;
Max=4100;step=0.0001;interval=Max*step;a=1;b=0;
% Ramp the amplitude up.
for n=1:Max
    Gamma=step*n;
    [t,x]=ode45(@Duffing,0:(2*pi/1.25):(4*pi/1.25),[a,b]);
    a=x(2,1);
    b=x(2,2);
    rup(n)=sqrt((x(2,1))^2+(x(2,2))^2);
end
% Ramp the amplitude down.
for n=1:Max
    Gamma=interval-step*n;
    [t,x]=ode45(@Duffing,0:(2*pi/1.25):(4*pi/1.25),[a,b]);
    a=x(2,1);
    b=x(2,2);
    rdown(n)=sqrt((x(2,1))^2+(x(2,2))^2);
end
hold on
rr=step:step:interval;
plot(rr,rup,'b.');                % Ramp up in blue.
plot(interval-rr,rdown,'r.') % Ramp down in red.
hold off;
fsize=15;
axis([0 Max*step 0 1.5]);
xlabel('\Gamma');
ylabel('r');
set(gca,'FontSize',20);
% The Duffing System.
function xdot=Duffing(t,x)
global Gamma;
xdot(1)=x(2);
xdot(2)=x(1)-0.3*x(2)-(x(1))^3+Gamma*cos(1.25*t);
xdot=[xdot(1);xdot(2)];
end
% End of Program_17f.
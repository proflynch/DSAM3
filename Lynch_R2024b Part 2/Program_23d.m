% Programs_23d - Animation of a Josephson junction threshold oscillator.
% Chapter 23 - Binary Oscillator Computing
% Copyright Springer 2025. Stephen Lynch.
% Physically, Josephson junctions oscillate 100,000,000 times faster
% than biological neurons and can be built on the nanoscale!
clear;clc;figure;BJ=1.2;
for n=1:300
   kappa=0.1+n*0.005; % Set kappa between 0.6 and 0.7.
   Josephson_Junction=@(t,x) [x(2);kappa-BJ*x(2)-sin(x(1))]; 
   options = odeset('RelTol',1e-4,'AbsTol',1e-4);
   [t,xb]=ode45(Josephson_Junction,[0 100],[0.1,0.1],options);
   plot(sin(xb(:,1)),xb(:,2),'color','[0,0.5,0]');
   title('JJ Threshold Oscillator');
   axis([-1.2 1.2 0 2]);
   set(gca,'FontSize',20);
   xlabel('sin(\phi)');
   ylabel('\Omega');
   grid on;
   F(n)=getframe;
end
implay(F,5);
% End of Program_23d.
% Program_11a - Phase Portrait (Fig. 11.8(a)).
% Chapter 11 - Planar Systems.
% Copyright Springer 2025. Stephen Lynch.

% Phase portrait of a linear system of ODE's.
% IMPORTANT - vectorfield.m must be in same directory.
clear;figure;
a11=2;a12=1;a21=1;a22=2;
sys = @(t,x) [a11*x(1)+a12*x(2);a21*x(1)+a22*x(2)]; 
vectorfield(sys,-3:.25:3,-3:.25:3)
     hold on
     for x0=-3:1.5:3
         for y0=-3:1.5:3
            [ts,xs] = ode45(sys,[0 5],[x0 y0]);
            plot(xs(:,1),xs(:,2))
         end
     end
     for x0=-3:1.5:3
         for y0=-3:1.5:3
            [ts,xs] = ode45(sys,[0 -5],[x0 y0]);
            plot(xs(:,1),xs(:,2))
         end
     end
     hold off
axis([-3 3 -3 3])
set(gca,'FontSize',20);
fsize=15;
set(gca,'XTick',-3:1:3)
set(gca,'YTick',-3:1:3)
xlabel('x(t)')
ylabel('y(t)')
hold off
% End of Program_11a.
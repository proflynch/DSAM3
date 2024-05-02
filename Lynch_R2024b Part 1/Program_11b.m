% Program_11b - Phase Portrait of a Nonlinear System (Fig. 11.12).
% Chapter 11 - Planar Systems.
% Copyright Springer 2025. Stephen Lynch.

% Phase portrait of a nonlinear system of ODE's.
% IMPORTANT - ensure vectorfield.m is in same directory.
clear;figure;
sys = @(t,x) [x(2);x(1)*(1-x(1)^2)+x(2)]; 
xmin=-3;xmax=3;sep=0.5;
vectorfield(sys,xmin:0.5:xmax,xmin:0.5:xmax);
     hold on
     for x0=xmin:sep:xmax
         for y0=xmin:sep:xmax
            [ts,xs] = ode45(sys,[0 10],[x0 y0]);
            plot(xs(:,1),xs(:,2));
         end
     end
     for x0=xmin:sep:xmax
         for y0=xmin:sep:xmax
            [ts,xs] = ode45(sys,[0 -10],[x0 y0]);
            plot(xs(:,1),xs(:,2));
         end
     end
     hold off
axis([xmin xmax xmin xmax]);
set(gca,'FontSize',20);
fsize=15;
set(gca,'XTick',xmin:sep:xmax);
set(gca,'YTick',xmin:sep:xmax);
xlabel('x(t)');
ylabel('y(t)');
hold off;
% End of Program_11b.
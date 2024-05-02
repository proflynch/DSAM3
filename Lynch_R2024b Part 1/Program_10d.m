% Program_10d.m: The wave equation. Modeling a vibrating string.
% Chapter 10 - Numerical Methods for ODEs and PDEs.
% Copyright Springer 2025. Stephen Lynch.
clear all;
N=101;L=1;x=linspace(0,L,N);
% U(:,1), U(:,2), U(:,3) refer to past, current and future values.
U = zeros(N,3);
c=0.5;
% U(0,x) initial condition. String plucked by 2cm.
U0(1:80)=0.025*x(1:80);U0(81:N)=0.1-0.1*(x(81:N));
U(:,1)=U0;
U(:,2)=U0;
% Plot the initial condition.
U_Plot=plot(x,U(:,2),'LineWidth',2);
axis([0,L,-0.02,0.02]);
xlabel('x'); ylabel('U(t,x)');
title('Vibrating String');
U(1,:)=0;U(end,:)=0; % Boundary conditions.
set(gca,'FontSize',20);
for n=1:4000
    U(2:end-1,3)=2*U(2:end-1,2)-U(2:end-1,1)+...
        c^2*(U(3:end,2)-2*U(2:end-1,2)+U(1:end-2,2));
    % Switch variables.
    U(:,1)=U(:,2);
    U(:,2)=U(:,3);
    U_Plot.YData=U(:,2);
    grid on;
    drawnow;
    frame = getframe(gcf);
    im = frame2im(frame);
end
% End Program_10d.
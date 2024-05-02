% Program_14a - Surface and Contour Plots. 
% Chapter 14 - Hamiltonian Systems, Lyapunov Functions, and Stability.
% Copyright Springer 2025. Stephen Lynch.

% The double-well potential (Fig. 14.5(b)).
figure;
fsize=15;
fsurf(@(x,y) -x.^2/2+x.^4/4+y.^2/2,[-1.5,1.5],'ShowContours','on');
set(gca,'FontSize',20);
set(gca,'XTick',-1.5:0.5:1.5)
set(gca,'YTick',-1.5:0.5:1.5)
xlabel('x')
ylabel('y')
title('Surface and Contour Plot')
% End of Program_14a.
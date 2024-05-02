% Program_06f - The f-alpha Spectrum of Dimensions.
% Chapter 6 - Fractals and Multifractals.
% Copyright Springer 2025. Stephen Lynch.

% An f-alpha curve for a multifractal Cantor set (Figure 6.16(c)).
q1=1/9;q2=8/9;
hold on
syms qu
tau=log((q1)^qu+(q2)^qu)/log(3);
alpha=-diff(tau,qu);
f=qu*alpha+tau;
fplot(alpha,f,[-20 20],'r');
x=0:1:6;
plot(x,x,'k');
axis([0 2.2 0 0.8]);
set(gca,'xtick',0:0.2:2.2,'FontSize',15);
set(gca,'ytick',0:0.2:0.8,'FontSize',15);
xlabel('\alpha','FontSize',15);
ylabel('f(\alpha)','FontSize',15);
title('f(\alpha) curve');
hold off

% End of Program_06f.
% Program_03d - Bifurcation Diagram of the Logistic Map.
% Chapter 3 - Nonlinear Discrete Dynamical Systems.
% Copyright Springer 2025. Stephen Lynch.

% Plot a bifurcation diagram (Figure 3.15).
% Plot 30 points for each r value.
clear
itermax=100;x=zeros(1,itermax);
finalits=10;finits=itermax-(finalits-1);
for r=0:0.001:4
    x=0.4;xo=x;
    for n=2:itermax
        xn=r*xo*(1-xo);
        x(n)=xn;
        xo=xn;
    end
    plot(r*ones(finalits),x(finits:itermax),'r.','MarkerSize',2)
    hold on
end
set(gca,'FontSize',20);
set(gca,'XTick',0:1:4)
set(gca,'YTick',0:0.2:1)
xlabel('{\mu}')
ylabel('\itx')
hold off
% End of Program_03d.
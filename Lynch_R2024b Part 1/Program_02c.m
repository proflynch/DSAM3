% Program_02c - The Leslie Matrix - Plots.
% Chapter 2 - Linear Discrete Dynamical Systems.
% Copyright Springer 2025. Stephen Lynch.
% Leslie Model Age Class Populations. See Example 4.
X=zeros(3,50);
L=[0 3 1;0.3 0 0;0 0.5 0];
X0=[1000;2000;3000];
x10=L^50*X0;
for i=1:51
    X(1:3,i)=L^(i-1)*X0;
end
Y=X';
x=0:1:50;
plot(x,Y,'LineWidth',3)
set(gca,'FontSize',20);
title('Age Class Populations')
set(gca,'XTick',0:10:50)
set(gca,'YTick',0:10000:20000)
axis([0 50 0 20000])
xlabel('Years')
ylabel('Populations')
legend('Age Class 1','Age Class 2','Age Class 3')
% End of Program_02c.
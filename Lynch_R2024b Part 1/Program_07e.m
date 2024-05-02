% Program_07e.m: Stability Diagram of a Neuromodule.
% Chapter 7 - Neural Networks.
% Copyright Springer 2025. Stephen Lynch.
b2=-1;w11=1.5;w21=5;alpha=1;beta=0.1;
xmin=5;
x=-5:0.01:5;
y=b2+w21.*tanh(x);
w12=(1-alpha.*w11.*(sech(alpha.*x)).^2)./...
    (alpha.*beta.*w21.*(sech(alpha.*x)).^2.*(sech(beta.*y)).^2);
b1=x-w11.*tanh(alpha.*x)-w12.*tanh(beta.*y);
hold on;
plot(b1, w12, "b") % Bistable boundary.
w12=(1+alpha.*w11.*(sech(alpha.*x)).^2)./...
    (alpha.*beta.*w21.*(sech(alpha.*x)).^2.*(sech(beta.*y)).^2);
b1=x-w11.*tanh(alpha*x)-w12.*tanh(beta*y);
plot(b1,w12,"r") % Unstable boundary.
w12=(-1)./(alpha.*beta.*w21.*(sech(alpha.*x)).^2.*(sech(beta.*y)).^2);
b1=x-w11.*tanh(alpha.*x)-w12.*tanh(beta.*y);
plot(b1,w12,"k") % Neimark-Sacker boundary.
set(gca,'FontSize',20);
txt='B^{+1}';text(1.5,2,txt,'Color','blue','FontSize',20)
txt='B^{-1}';text(0,6,txt,'Color','red','FontSize',20)
txt='B^{NS}';text(1.7,-5,txt,'Color','black','FontSize',20)
xlabel('$b_1$','Interpreter','latex')
ylabel('$w_{12}$','Interpreter','latex')
axis([-6 6 -10 10])
hold off;
% End of Program_07e.

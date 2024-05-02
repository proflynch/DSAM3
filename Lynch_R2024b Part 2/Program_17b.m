% Program_17b - Phase portraits for Hamiltonian systems with two degrees of freedom.
% Chapter 17 - Poincare Maps and Nonautonomous Systems in the Plane.
% Copyright Springer 2025. Stephen Lynch.

% Poincare surfaces of section (Fig. 17.5(e)-(f)).
% Quasiperiodic behavior.
% The Hamiltonian equations.
% Here p1=p(1),p2=p(2),q1=p(3),q2=p(4).

deq=@(t,p) [-sqrt(2)*p(3);-p(4);sqrt(2)*p(1);p(2)]; 
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[~,pp]=ode45(deq,[0 200],[.5,1.5,.5,0],options);

% A 3-dimensional projection (Fig. 17.5(e)).
subplot(2,1,1)
set(gca,'FontSize',20);
plot3(pp(:,1),pp(:,2),pp(:,4))

deq=@(t,p) [-sqrt(2)*p(3);-p(4);sqrt(2)*p(1);p(2)]; 
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,pq]=ode45(deq,[0 1000],[.5,1.5,.5,0],options);

% A 2-dimensional projection (Fig. 17.5(f)).
% Determine where trajectory crosses q2=0 plane.
k=0;p1_0=zeros(1,10^6);q1_0=zeros(1,10^6);
for i=1:size(pq)
    if abs(pq(i,4))<0.1
        k=k+1;
        p1_0(k)=pq(i,1);
        q1_0(k)=pq(i,3);       
    end
end

subplot(2,1,2)
hold on
axis([-1 1 -1 1]);
set(gca,'FontSize',20);
set(gca,'XTick',-1:.5:1);
set(gca,'YTick',-1:.5:1);
xlabel('p_1');
ylabel('q_1');
plot(p1_0(1:k),q1_0(1:k),'+','MarkerSize',3);
hold off
% End of Program_17b.
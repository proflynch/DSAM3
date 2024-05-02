% Program_23a - Hodgkin-Huxley equations spike train.
% Chapter 23 - Binary Oscillator Computing.
% Copyright Springer 2025. Stephen Lynch.
% Hodgkin Huxley Integtrator with Synaptic Coupling - no time delay.
clear;
I=@(t) 6.3*heaviside(t-100)-6.3*heaviside(t-200)+...
    25*heaviside(t-300)-25*heaviside(t-400);
Gna=120;Gk=36;Gl=0.3;
Vna=50;Vk=-77;Vl=-54.402;C=1;
y=zeros(1,4);  
HHdeq=@(t,y) [(I(t)-Gna*y(2)^3*y(3)*(y(1)-Vna)-Gk*y(4)^4*(y(1)-Vk)-...
    Gl*(y(1)-Vl))/C;
    0.1*(y(1)+40)/(1-exp(-0.1*(y(1)+40)))*(1-y(2))-...
    4*exp(-0.0556*(y(1)+65))*y(2);
    0.07*exp(-0.05*(y(1)+65))*(1-y(3))-1/(1+exp(-0.1*(y(1)+35)))*y(3);...
    0.01*(y(1)+55)/(1-exp(-0.1*(y(1)+55)))*(1-y(4))-...
    0.125*exp(-0.0125*(y(1)+65))*y(4)];
[t,ya]=ode45(HHdeq,[0 400],[15,0.01,0.5,0.4]);
figure(1);set(gca,'FontSize',20);
subplot(5,1,1);
plot(t,ya(:,1));
axis([0 400 -80 40]);
set(gca,'XTick',0:50:400);
set(gca,'YTick',-80:40:40);
xlabel('Time (ms)');
ylabel('Voltage (mV)');
subplot(5,1,2);
plot(t,ya(:,2),'k');
set(gca,'XTick',0:50:400);
set(gca,'YTick',0:1);
xlabel('Time (ms)');
ylabel('m(V)');
subplot(5,1,3);
plot(t,ya(:,3),'r');
set(gca,'XTick',0:50:400);
set(gca,'YTick',0:1);
xlabel('Time (ms)');
ylabel('h(V)');
subplot(5,1,4);
plot(t,ya(:,4),'color','[0,0.5,0]');
set(gca,'XTick',0:50:400);
set(gca,'YTick',0:1);
xlabel('Time (ms)');
ylabel('n(V)');
subplot(5,1,5);
plot(t,I(t),'color','c');
axis([0 400 0 30]);
set(gca,'XTick',0:50:400);
set(gca,'YTick',0:10:30);
xlabel('Time (ms)');
ylabel('Input (mA)');
% End of Program_23a.
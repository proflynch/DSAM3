% Programs_23c.m: Fitzhugh-Nagumo Binary Oscillator Half-Adder.
% Chapter 23 - Binary Oscillator Computing.
% Copyright Springer 2025. Stephen Lynch.
clear;
tmax=500;
tspan=[0 tmax];
e1=0.8; e2=0.45; i1=-1.5; % Synaptic weights.
mat=[0 0 e1 e2
     0 0 e1 e2
     0 0 0  0
     0 0 i1 0];
 I=[0 0 0 0
    0 1 0 0
    1 0 0 0
    1 1 0 0];
str=1;
I=I*str;
m=-100;p=60;
yinit=zeros(size(mat,1)*2,1);
a=0.1;b=0.1;c=0.1;
noise=0; % Add Gaussian noise if you like.
nodes=size(I,2);
ylong=[];tlong=[];
for loop1=1:size(I,1)
    [t,y]=ode45(@FN,tspan,yinit,[],[a b c],I(loop1,:)',mat,noise,m,p);
    yinit=y(end,:)';
    tlong=[tlong;t+(loop1-1)*tmax];
    ylong=[ylong;y];
end
figure(1);
set(gca,'FontSize',20);
subplot(4,1,1);
plot(tlong,ylong(:,1),'b');
axis([tlong(1) tlong(end) -1 1.5]);
xlabel('Time'); ylabel('A');
set(get(gca,'ylabel'),'rotation',0)
subplot(4,1,2);
plot(tlong,ylong(:,3),'b');
axis([tlong(1) tlong(end) -1 1.5]);
xlabel('Time'); ylabel('B');
set(get(gca,'ylabel'),'rotation',0)
subplot(4,1,3);
plot(tlong,ylong(:,5),'color','[0,0.5,0]');
axis([tlong(1) tlong(end) -1 1.5]);
xlabel('Time'); ylabel('S');
set(get(gca,'ylabel'),'rotation',0)
subplot(4,1,4);
plot(tlong,ylong(:,7),'color','[0,0.5,0]');
axis([tlong(1) tlong(end) -1 1.5]);
xlabel('Time'); ylabel('C');
set(get(gca,'ylabel'),'rotation',0)

function cols=FN(~,y,pars,I,mat,noise,m,p)
Activation_Function=@(v,m,p) 1./(1+exp(m*v+p));
a=pars(1);b=pars(2);c=pars(3);
mat=mat';
nodes=floor(length(y)/2);
cols=zeros(nodes*2,1);
u=y(1:2:end);
v=y(2:2:end);
cols(1:2:end)=-u.*(u-a).*(u-1)-v+I;
cols(2:2:end)=c*(u-b*v);
cols(1:2:end)=cols(1:2:end)+mat*Activation_Function(v,m,p);
cols=cols+randn(length(cols),1)*noise;
end
% End of Program_23c.
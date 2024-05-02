% Program_05b - Iteration of the Ikeda Map.
% Chapter 5 - Electromagnetic Waves and Optical Resonators.
% Copyright Springer 2025. Stephen Lynch.

% Chaotic attractor for the Ikeda map (Figure 5.11(a)).
A=10;B=0.15;N=10000;
figure;
E=zeros(1,N);x=zeros(1,N);y=zeros(1,N);
E(1)=A;x(1)=A;y(1)=0;
for n=1:N
    E(n+1)=A+B*E(n)*exp(1i*abs(E(n))^2);
    x(n+1)=real(E(n+1));
    y(n+1)=imag(E(n+1));
end
axis([8 12 -2 2])
plot(x(50:N),y(50:N),'.','MarkerSize',1);
set(gca,'XTick',8:1:12)
set(gca,'YTick',-2:1:2)
xlabel('Real E_n')
ylabel('Imag E_n')
set(gca,'FontSize',20);
    
% End of Program_05b.

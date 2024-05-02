% Program_15a - Animation of a Simple Curve.
% Chapter 15 - Bifurcation Theory.
% Copyright Springer 2025. Stephen Lynch.

% The curve y=mu-x^2, for mu from -4 to +4.
clear
axis tight
% Record the movie
x=-4:.1:4;
for n = 1:9 
    plot(x,(n-5)-x.^2);
    set(gca,'XAxisLocation','origin','YAxisLocation','origin')
    axis([-4 4 -4 4]);
    M(n) = getframe;
end
% Use the Movie Player to watch the animation.
implay(M)
% End of Program_15a.
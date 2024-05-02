% Program 01a: Tutorial One: The Basics.
% Chapter 1 - A Tutorial Introduction to MATLAB and the Symbolic Math Package.
% Copyright Springer 2025. Stephen Lynch.

% These commands should be run in the Command Window. If you are new to MATLAB
% copy the commands and hit ENTER at the end of each line.
% You can cut and paste the following commands into the Command Window.

% This is a comment.                % Helps when writing programs.
1+2*(10-6/2)                        % BODMAS.
sqrt(16)                            % Square root.
u=[1,2,3]                           % A vector, u=[1,2,3].
2*u                                 % Scalar multiplication.
v=u.^2                              % Vector power, v=[1,4,9].
w=u./v                              % Vector divide, w=[1,0.5,0.3333].
dot(u,v)                            % Dot product.
cross(u,v)                          % Cross product.
A=[1,2;3,4]                         % A 2x2 matrix.
A'                                  % The transpose.
det(A)                              % The determinant.
inv(A)                              % The inverse.
eye(3)                              % The 3x3 identity matrix.
B=[0,3,1;.3,0,0;0,.5,0]             % A 3x3 matrix.
eig(B)                              % The eigenvalues of B.
[Vects,Vals]=eig(B)                 % Eigenvectors and eigenvalues.
C=[100;200;300]                     % A 3x1 matrix.
D=B*C                               % Matrix multiplication.
E=B^4                               % Powers of matrices.
z1=1+1i;z2=1-1i;z3=2+1i;             % Complex numbers.
z4=2*z1-z2*z3                       % Complex arithmetic.
abs(z1)                             % Modulus.
real(z1)                            % Real part.
imag(z1)                            % Imaginary part.
exp(1i*z1)                          % Exponential.
sym(1/2)+sym(3/4)                   % Symbolic arithmetic.
1/2+3/4                             % Double precision.
vpa(pi,50)                          % Variable precision.
syms x y z t                        % Symbolic objects
z=x^3-y^3
factor(z)                           % Factorization.
expand(6*cos(t-pi/4))               % Expansion.
simplify(z/(x-y))                   % Simplification.
syms x y
[x,y]=solve(x^2-x,2*x*y-y^2)        % Solving simultaneous equations.
syms x mu
f=mu*x*(1-x)                        % Define a function.
subs(f,x,1/2)                       % Evaluate f(1/2).
fof=subs(f,x,f)                     % Composite function.
limit(x/sin(x),x,0)                 % Limits.
diff(f,x)                           % Differentiation.
syms x y
diff(3*x^5*y^10,x,x,y,y,y)          % Partial differentiation.
int(sin(x)*cos(x),x,0,pi/2)         % Integration.
int(1/x,x,0,inf)                    % Improper integration.
syms n x
s1=symsum(1/n^2,1,inf)              % Symbolic summation.
g=exp(x)
taylor(g,'Order',10)                % Taylor series up to order 10.
syms a w s t 
laplace(t^3)                        % Laplace transform.
ilaplace(1/(s-a))                   % Inverse transform.
fourier(exp(-t^2))                  % Fourier transform.
ifourier(pi/(1+w^2))                % Inverse transform.

% End of Program 01a.

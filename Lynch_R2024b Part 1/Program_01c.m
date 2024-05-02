% Program_01c: The Fibonacci sequence.
% Chapter 1 - A Tutorial Introduction to MATLAB and the Symbolic Math Package.
% Copyright Springer 2025. Stephen Lynch.

Nmax=input('Input the number of terms of the Fibonacci sequence:')
F=zeros(1,Nmax);
F(1)=0;F(2)=1;
for i=3:Nmax
    F(i)=F(i-1)+F(i-2);
end
F
% End of Program_01c.
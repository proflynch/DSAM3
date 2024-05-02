% Program_01d: The use of logical expressions.
% Chapter 1 - A Tutorial Introduction to MATLAB and the Symbolic Math Package.
% Copyright Springer 2025. Stephen Lynch.

integer=input('Which integer do you wish to test?')
if integer == 0 
    disp(['The integer is zero.'])
elseif integer < 0
    disp(['The integer is negative.'])
else
    disp(['The integer is positive.'])
end
% End of Program_01d.
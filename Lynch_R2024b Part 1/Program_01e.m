% Program_01e: The sine of 10,000,001 values ranging from 0 to 10.
% Save the file as loop_code.m.
tic
y=zeros(1,10000001);
i=0;y(1)=0;
for t=0:.000001:10
    i=i+1;
    y(i)=sin(t);
end
toc
% End of Program_01e.
% MATLAB program to check whether an integer is an Armstrong number or not.

clc;
clear all;
close all;
x=input('Enter the Number: ');
c=0;
m=x;
while m>0
    b=rem(m,10);
    c=c+1;
    m=(m-b)/10;
end
rs=0;
m=x;
while(m>0)
    b=rem(m,10);
    rs=rs+(b^c);
    m=(m-b)/10;
end
if(rs==x)
    disp('It is an Armstrong Number');
else
    disp('It is not an Armstrong Number');
end

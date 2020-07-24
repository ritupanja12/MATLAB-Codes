% MATLAB program to print the Fibonacci sequence of length 30.

clc;
clear all;
close all;
a = 0;
b = 1;
n = input('Enter number of term desired: ');
x = n-1;

for i = 1:n %term for n
    
    fprintf('\t')
    fprintf('%d',a);
    c = a + b;
    a = b;
    b = c;
end
for i = n:x %term for n-1
    
    fprintf('\t')
    fprintf('%d',a);
    c = a + b;
    a = b;
    b = c;
    
end
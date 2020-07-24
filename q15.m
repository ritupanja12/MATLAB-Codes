% MATLAB code to sort the elements in an array without using the sort function.

clc;
clear all;
close all;
A = [1 2 4 0 0 8 5 11 0.2];
B = zeros(size(A));           
for k = 1:numel(A)            
    [m, ind] = min(A);       
    A(ind)   = [];            
    B(k)     = m;
end
disp('Numbers after sorting them are :')
disp(B)
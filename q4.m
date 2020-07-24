% MATLAB programs to solve a quadratic equation with and without using inbuilt functions.

clc;
clear all;
close all;
a=input('Enter the First Co-Efficient :');
b=input('Enter the Second Co-Efficient :');
c=input('Enter the Third Co-Efficient :');
x1=(-b+sqrt(b.^2-4.*a.*c))/(2.*a)
x2=(-b-sqrt(b.^2-4.*a.*c))/(2.*a)


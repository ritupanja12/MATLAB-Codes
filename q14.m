% MATLAB program to swap two numbers with and without using a temporary variable.

clc;
clear all;
close all;
a=input('Enter the First Number : ');
b=input('Enter the Second Number : ');
a=a+b;
b=a-b;
a=a-b;
disp('First Number becomes')
disp(a)
disp('Second Number becomes')
disp(b)
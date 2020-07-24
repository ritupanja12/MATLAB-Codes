% MATLAB program to print first 50 prime numbers.

clc;
clear all;
close all;
num1 =input('Enter num1 value : ');
num2 =input('Enter num2 value : ');
n = num1 : num2 ;
p = isprime(n);
n(p)
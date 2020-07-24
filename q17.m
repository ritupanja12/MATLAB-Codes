% MATLAB program to find GCD and LCM of 2 numbers.

clc;
clear all
close all;
x=input('Enter the First Number :');
y=input('Enter the Second Number :');
for i=1:x
    if((rem(x,i)==0 && (rem(y,i)==0)))
        c=i;
    end
end
z=x*y/c;
disp('GCD');
disp(c);
disp('LCM');
disp(z);

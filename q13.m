% MATLAB program to find DFT of an input sequence and verify all the properties of DFT.

clc;
clear all;
close all;
%DFT and IDFT using matlab functions
x=input('Enter the input sequence x(n)=');
N=input('Enter the length of the DFT N=');
X=fft(x);
n=0:N-1;
% Convolution
h1=input('Enter the impulse response h[n]= ');
y=conv(x,h1);
N=length(x)+length(h1)-1;
disp('The convoluted sequence is:');
disp(y);
% Circulat Convolution
x2=input('Enter the input sequence x2[n]= ');
N1=length(x);
N2=length(x2);
N=max(N1,N2);
y=cconv(x,x2,N);
disp('The convoluted sequence is:');
disp(y);

%Plot Input Sequence
subplot(9,1,1);
stem(n,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Input Sequence');
%Plot DFT
subplot(9,1,2);
stem(n,X);
disp('DFT of input sequence is ');
disp(X);
xlabel('Frequency');
ylabel('X(k)');
title('DFT');
%Plot Magnitude Spectrum
subplot(9,1,3);
stem(n,abs(X));
xlabel('Frequency');
ylabel('|X(k)|');
title('Magnitude spectrum');
%Plot Phase Spectrum
subplot(9,1,4);
stem(n,angle(X));
xlabel('Frequency');
ylabel('Phase');
title('Phase spectrum');
%To find and plot IDFT
xr=ifft(X);
subplot(9,1,5);
stem(n,abs(xr));
title('IDFT');
xlabel('Time (s)');
ylabel('Amplitude');
disp('IDFT of input sequence is ');
disp(xr);
subplot(9,1,6);
stem(h1);
xlabel('Time');
ylabel('Amplitude');
title('Impulse Sequence h(n)')
subplot(9,1,7);
stem(y);
ylim([0,N]);
xlabel('Time');
ylabel('Amplitude');
title('Linear Convolution');
subplot(9,1,8);
stem(x2);
xlabel('Time');
ylabel('Amplitude');
title('Input sequence x2(n)')
subplot(9,1,9);
stem(y);
xlabel('Time');
ylabel('Amplitude');
title('Circular Convolution');
%To find Z-transform of finite duration sequence without using inbuilt function
z=sym('z');
X=0;
k=1;
for i=0:N1-1
X=X+x(i+1)*z^(-i);
end
disp('The Z-transform of the input sequence is:')
disp(X);
%To find inverse Z-transform of finite duration sequence using inbuilt function
z=iztrans(X);
disp('The Inverse Z-transform of the earlier Z-transform output is:')
disp(z);

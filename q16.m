% MATLAB program to generate PWM and PPM waveforms.

clc;
clear all;
close all;
F2=input('Message Frequency = ');
F1=input('Carrier Sawtooth Frequency = ');
A=5;
t=0:0.001:1;
c=A.*sawtooth(2*pi*F1*t);
figure(1)
subplot(6,1,1);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Sawtooth Wave');
grid on;
m=0.75*A.*sin(2*pi*F2*t);
subplot(6,1,2);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;
n=length(c);
for i=1:n
    if (m(i)>=c(i))
        pwm(i)=1;
    else
        pwm(i)=0;
    end
end
subplot(6,1,3);
plot(t,pwm);
xlabel('Time');
ylabel('PWM');
title('Plot of PWM');
grid on;
fc=1000;
fs=10000; % Sampling Frequency
f=200; % Single Tone Modulation
t=0:2/fs:((2/f)-(1/fs));
x=0.4*cos(2*pi*f*t)+0.5;
y=modulate(x,fc,fs,'ppm');
subplot(6,1,4);
plot(x);
title('modulating signal');
subplot(6,1,5);
plot(y);
title('modulated signal');
x_recov=demod(y,fc,fs,'ppm');
subplot(6,1,6);
plot(x_recov);
title('original signal')

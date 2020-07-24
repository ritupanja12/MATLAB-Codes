% MATLAB program to reproduce the Olympic rings and plot the same.

clc;
clear all;
close all;
N = 1000;
angle = linspace(pi/4,9*pi/4,N);
xb = cos(angle) * 0.9;
yb = sin(angle) * 0.9;
xy = cos(angle) * 0.9 + 1;
yy = sin(angle) * 0.9 - 1;
xk = cos(angle) * 0.9 + 2;
yk = sin(angle) * 0.9;
xg = cos(angle) * 0.9 + 3;
yg = sin(angle) * 0.9 - 1;
xr = cos(angle) * 0.9 + 4;
yr = sin(angle) * 0.9;
h1 = figure;
hold on
plot(xb(1:3*N/4),yb(1:3*N/4),'b','linewidth',5);
plot(xy(N/4:N),yy(N/4:N),'y','linewidth',5)
plot(xk(1:3*N/4),yk(1:3*N/4),'k','linewidth',5);
plot(xy(1:N/4),yy(1:N/4),'y','linewidth',5);
plot(xb(3*N/4:end),yb(3*N/4:end),'b','linewidth',5);
plot(xr(1:N/2),yr(1:N/2),'r','linewidth',5);
plot(xg(1:N),yg(1:N),'g','linewidth',5);
plot(xk(3*N/4:N),yk(3*N/4:N),'k','linewidth',5);
plot(xr(N/2:N),yr(N/2:N),'r','linewidth',5);
% make the axis pretty
axis equal
axis off
xlim([-1.2 5.2])
set(h1,'Color',[1 1 1])
hold off


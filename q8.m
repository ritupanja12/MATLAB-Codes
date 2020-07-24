% MATLAB code to plot 7 concentric circles using Meshgrid and plot functions.

clc;
clear all;
close all;
theta = linspace(0, 2*pi, 50);
[X, Y] = meshgrid(0.5:0.25:2.0, theta);
plot(0+cos(Y).*X, 0+sin(Y).*X);

% MATLAB program to plot the total number of COVID19 Cases (till date. ie, 24th June 2020) in any 10 countries of your choice using bar plots.

clc;
clear all;
close all;
y=[2423315 740000 123766; 1189436 613000 54145; 614425 369000 8666; 470933 259000 14788; 306921 0 42927; 247000 150000 28325; 239113 185000 34693; 83442 78428 4634; 193503 176000 8996; 188946 73471 3800;];
bar3h(y,'grouped');
set(gca,'zticklabel',{'USA', 'Brazil', 'Russia', 'India', 'UK', 'Spain', 'Italy', 'China', 'Germany', 'Pakistan'});
ylabel('Numbers');
zlabel('Countries');
title('Covid Stats of June 24th 2020');
legend('Confirmed', 'Recovered', 'Death');

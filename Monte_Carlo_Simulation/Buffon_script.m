%Georges-Louis Leclerc, Comte de Buffon, Monte Carlo Simulation Script
%Jorge Guzman Nader
%CBEE 102
%02/15/2018
%This scrip uses the next functions:
%BuffonNeedle_plot(N): Creates a cartoon of N amount of needles
%dropped in a grid of line, the needles have red color if have touch the line
%and blue color if not.
%BuffonNeedle_pi(N): Stimates the value of pi by a given number N of trials

clc

%tic,toc gives the runtime for the code 
tic;

%This function plot the visual experiement of needle drop and color code it
BuffonNeedle_plot(100)

%This function calculate pi given different number of needle drops
N=100;
for i = 1:100
    pi(i)=BuffonNeedle_pi(N);
end 
%Display the value of ans label as piVal 
piVal = ans

%Display a histogram to show the distribution of the value of pi for every
%iteration of the for loop
histogram(pi)

%Title and labels for the histogram
title('Distribution of pi value')
ylabel('Number of trials')
xlabel('Pi value distribution')

%calculate the standar deviation for the stimated value of pi
std1 = std(pi)

toc;




 


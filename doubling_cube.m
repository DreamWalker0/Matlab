%*************************************************************************************************************************
%Doubling the cube 
%Jorge Guzman Nader
%CBEE 102
%02/26/2018
%This program doubles the volume of a cube
% 
%Background: The Egyptians, Indians, and particularly the Greeks were aware of the problem of doubling  
%the volume of a cube and made many futile attempts at solving what they saw as an obstinate but soluble problem. However, 
%the nonexistence of a solution was finally proven by Pierre Wantzel in 1837. 
%
%*************************************************************************************************************************
close all
clear all
%side of new double cube
s1 = input('input length of the side for the cube: ')

%calculate volume
v = s1^3

%calculate the side length of a doubled volume 
s2 = (s1*nthroot(2, 3))

%calculate the double of the volume
v2 = (s1*nthroot(2, 3))^3

%display the message in a box
h = msgbox(sprintf('Your length is %2.3g\nYour volume is %2.3g\nYour new side for a double volume is %2.3g\nYour doubled volume is %2.3g',s1,v,s2,v2))



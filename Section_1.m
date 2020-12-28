clc; clear; close all;
diary on; echo on;

% Task 2 - Section 1

t=[-4:0.05:4]; 

re=eval(vectorize('3*exp(pi/3)*cos(4*pi*t)')); %equivalent to eval(vectorize(real(3*exp((pi/3)-i*4*pi*t)))) 
im=eval(vectorize('-3*exp(pi/3)*sin(4*pi*t)')); %equivalent to eval(vectorize(imag(3*exp((pi/3)-i*4*pi*t)))) 

subplot(2,1,1)
plot(t,re), grid on
xlabel('t'),ylabel('Re(f(t))');
title('Real part Vs. Time Plot')

subplot(2,1,2)
plot(t,im), grid on
xlabel('t'),ylabel('Im(f(t))');
title('Imaginary part Vs. Time Plot')

diary off; echo off;

%Selmane Tabet & 724009589
%Kenana Dalle & 725002949
%MATLAB Project Section 1.
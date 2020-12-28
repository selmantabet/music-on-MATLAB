clc; clear; close all;
diary on; echo on;

% Task 2 - Section 2

theta=[0:0.05:2*pi]; 

r=1-cos(theta);
z=r.*exp(i*theta);
re=real(z);
im=imag(z);

plot(re,im), grid on;
xlabel('Re(z)'), ylabel('Im(z)');
title('Real Vs. Imaginary Plot');


diary off; echo off;

%Selmane Tabet & 724009589
%Kenana Dalle & 725002949
%MATLAB Project Section 2.
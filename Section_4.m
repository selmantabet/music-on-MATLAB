clc; clear; close all;
diary on; echo on;

% Task 2 - Section 4

n=[0:0.5:11]; 
% In this section the rect and tri function were convoluted using the conv
% function in MATLAB
x=rectangularPulse(n-3);
h=triangularPulse((n-6)/4); 


subplot(3,1,1)
stem(n,x), grid on
xlabel('n'),ylabel('x[n]');
title('x[n] Plot')

subplot(3,1,2)
stem(n,h), grid on
xlabel('n'),ylabel('h[n]');
title('h[n] Plot')

subplot(3,1,3)
stem(conv(x,h)), grid on
xlabel('n'),ylabel('y[n]');
title('y[n] Plot')

diary off; echo off;

%Selmane Tabet & 724009589
%Kenana Dalle & 725002949
%MATLAB Project Task2 - Section 4.





clc; clear; close all;
diary on; echo on;

% Task 2 - Section 3 Main code

% Testing the function

t = [0:0.01:1];

y = sin(10*pi.*t); %Power Signal Test

is_message_or_power(y);

z = randn(length(t));

is_message_or_power(z);

diary off; echo off;

%Selmane Tabet & 724009589
%Kenana Dalle & 725002949
%MATLAB Project Task 2 - Section 3 Main.
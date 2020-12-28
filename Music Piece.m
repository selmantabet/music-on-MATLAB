clc; clear; close all;
diary on; echo on;

%DO NOT DELETE THESE!

%Ignored initial note rest, feel free to fix it.

%Note 1: G eighth = sin(2*pi*220*2^(10/12)*t)*(rectangularPulse(0,0.25,t)) )
%Pause execution for 0.5s or zero value across 4k samples (assuming 8k Fs))

%Note 2: 2x G eighth = sin(2*pi*220*2^(10/12)*t)*(rectangularPulse(0.75,1,t)) )
%sin(2*pi*220*2^(10/12)*t)*(rectangularPulse(1,1.25,t)) )
%Pause execution for 0.5s or zero value across 4k samples (assuming 8k Fs))

%Note 3: E half = sin(2*pi*220*2^(7/12)*t)*(rectangularPulse(1.75,2.75,t)) )
%Pause execution for 0.5s or zero value across 4k samples (assuming 8k Fs))

%Note 4: eighth note rest -> pause execution for 0.25+0.5 = 0.75s total or set 6k samples to zero.

%Note 5: F eighth = sin(2*pi*220*2^(8/12)*t)*(rectangularPulse(3.5,3.75,t)) )
%Pause execution for 0.5s or zero value across 4k samples (assuming 8k Fs))

%Note 6: F two eighth = sin(2*pi*220*2^(8/12)*t)*(rectangularPulse(4.25,4.75,t)) )
%Pause execution for 0.5s or zero value across 4k samples (assuming 8k Fs))

%Note 7: E flat half = sin(2*pi*220*2^(6/12)*t)*(rectangularPulse(5.25,6.25,t)) )
%Pause execution for 0.5s or zero value across 4k samples (assuming 8k Fs))

diary off; echo off;

%Selmane Tabet & 724009589
%Kenana Dalle & 725002949
%MATLAB Project Music Piece Interpretation
clear, clc, close all;

% Task 1 - Question 2,3 and 4

% In Question 2, we are asked to write a mathmatical expression that
% represents the composition using dicrete time unit step functions from
% Question 1 at a sampling rate of 8000 Hz

% In Question 3, we are asked to store the discrete values of the note in a
% vector 

% In Question 4, a decay function was to be multiplied to the signal in
% order to produce a decay envelope effect.

% Based on Question 1 signals, the modified version is displayed below.

G = 220 * 2 ^(10/12);
F = 220 * 2^(8/12);
Eb = 220 * 2^(6/12);
E = 220 * 2^(7/12);
D = 220 * 2^(5/12);
Fs = 8000;
Ts = 1/8000;
n = 0:1:8*8000+1;
vector = zeros(1,8*8000);
% First rest counted as 0.25 sec because its an eighth note rest
% First note is an eighth note that lasts for 0.25 secs
firstnote = sin(2*pi*G*Ts.*n) .* (heaviside(Ts.*n-(1/4))-heaviside(Ts.*n-(2/4))) .* exp(-3*(Ts.*n - (1/4)));
% A pause for 0.5 secs

% Second note consists of two eighth notes that las a total of 0.5 secs
scndnote = sin(2*pi*G*Ts.*n) .* (heaviside(Ts.*n-(4/4))-heaviside(Ts.*n-(5/4))).* exp(-(Ts.*n - (4/4)));
scndnote2 = sin(2*pi*G*Ts.*n) .* (heaviside(Ts.*n-(5/4))-heaviside(Ts.*n-(6/4))) .* exp(-(Ts.*n - (5/4)));
% A pause for 0.5 secs

% Third note consists of a half note at an E flat that lasts 1 sec
thirdnote = sin(2*pi*Eb*Ts.*n).* (heaviside(Ts.*n-(8/4))-heaviside(Ts.*n-(12/4))) .* exp(-(Ts.*n - (8/4)));
% A rest for 0.25 secs + a pause of 0.5 secs = 0.75 secs

% Eighth note of 0.25 secs
fourthnote = sin(2*pi*F*Ts.*n) .* (heaviside(Ts.*n-(15/4))-heaviside(Ts.*n-(16/4))) .* exp(-(Ts.*n - (15/4)));
% A pause of 0.5 secs

%  Two eighth notes 0.5 sec total
fifthnote = sin(2*pi*F*Ts.*n) .* (heaviside(Ts.*n-(18/4))-heaviside(Ts.*n-(19/4))) .* exp(-(Ts.*n - (18/4)));
fifthnote2 = sin(2*pi*F*Ts.*n) .* (heaviside(Ts.*n-(19/4))-heaviside(Ts.*n-(20/4))) .* exp(-(Ts.*n - (19/4)));
% A pause of 0.5 secs

%  A half note at D flat for 1 sec
sixthnote = sin(2*pi*D*Ts.*n) .* (heaviside(Ts.*n-(22/4))-heaviside(Ts.*n-(26/4))) .* exp(-(Ts.*n - (22/4)));

notes = (firstnote+scndnote+scndnote2+thirdnote+fourthnote+fifthnote+fifthnote2+sixthnote);

for (j =  1:8*8000)
    vector(j) = notes(j);
end

audiowrite('musicalnote.wav',notes,8000); 

m=audioread('musicalnote.wav'); 
%plays the musical note
sound(m)

%Selmane Tabet & 724009589
%Kenana Dalle & 725002949
%MATLAB Project - Question 2, 3 and 4.

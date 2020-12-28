clear, clc, close all;

% Task 1 - Question 1 and 7

% In Question 1, we are asked to write a mathmatical expression that
% represents the composition using continuoues time unit step functions

% In Question 7, a spectrogram of the resulting signals generated in
% question 1 should be displayed.

% First we will write the frequncies of the notes used

G = 220 * 2 ^(10/12);
F = 220 * 2^(8/12);
Eb = 220 * 2^(6/12);
E = 220 * 2^(7/12);

t = 0:1/8000:8;

% First rest counted as 0.25 sec because its an eighth note rest
% First note is an eighth not that lasts for 0.25 secs
firstnote = sin(2*pi*G.*t) .* (heaviside(t-(1/4))-heaviside(t-(1/2)));
% A pause for 0.5 secs

% Second note consists of two eighth notes that las a total of 0.5 secs
scndnote = sin(2*pi*G.*t) .* (heaviside(t-(3/2))-heaviside(t-(7/4)));
scndnote2 = sin(2*pi*G.*t) .* (heaviside(t-(7/4))-heaviside(t-(8/4)));
% A pause for 0.5 secs

% Third note consists of a half note at an E flat that lasts 1 sec
thirdnote = sin(2*pi*Eb.*t).* (heaviside(t-(10/4))-heaviside(t-(14/4)));
% A rest for 0.25 secs

% Eighth note of 0.25 secs
fourthnote = sin(2*pi*F.*t) .* (heaviside(t-(15/4))-heaviside(t-(16/4)));
% A pause of 0.5 secs

%  Two eighth notes 0.5 sec total
fifthnote = sin(2*pi*F.*t) .* (heaviside(t-(18/4))-heaviside(t-(19/4)));
fifthnote2 = sin(2*pi*F.*t) .* (heaviside(t-(19/4))-heaviside(t-(20/4)));
% A pause of 0.5 secs

%  A half note at A flat for 1 sec
sixthnote = sin(2*pi*Eb.*t) .* (heaviside(t-(22/4))-heaviside(t-(26/4)));

notes = firstnote+scndnote+scndnote2+thirdnote+fourthnote+fifthnote+fifthnote2+sixthnote;

spectrogram(notes,200); %Spectrogram Display
view(-90,90)

%Selmane Tabet & 724009589
%Kenana Dalle & 725002949
%MATLAB Project Music Piece Composition - Question 1 and 7.
% This function generates an echoed version of the inputed vector y, by
% multiplying it with an atinuated factor 'a' and shifting it by a time
% delay of T multiplyed by the sampling frequency. The echo will be
% generated by adding the original sequence to the delayed sequence.
% 'a' is the attenuation factor
% 'T' is the time delay
% 'y' is the original audio data obtained from the .wav file
% Fs is the sample rate

function shifted = echoeffect(a, T, y, Fs)

shifted = zeros(size(y));

for j = T*Fs + 1:size(y)
    shifted(j) = y(j) + a*y(j-T*Fs);
end
end

%Selmane Tabet & 724009589
%Kenana Dalle & 725002949
%MATLAB Project Task 1 - Question 5 Helper Function.
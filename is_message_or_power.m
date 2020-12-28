
% Task 2 - Section 3 message and power signals

% Helper function -- After calculating the mean of the function and its
% square we check if m is almost 0 and if m of function squared is non-zero
% and we display 1 or 0 accordingly

function result = is_message_or_power(func)

m = mean(func);
m_sqrd = mean(func.^2);

if (m <= 0.01 & m_sqrd ~= 0)
    result = 0; % if the signal is power signal
    fprintf('The signal is a  power signal %d \n',result);

elseif ( m ~= 0 & m_sqrd ~= 0)% if the signal is message signal
    result = 1;
    fprintf('The signal is a message signal %d \n',result);
    
end
end
%Selmane Tabet & 724009589
%Kenana Dalle & 725002949
%MATLAB Project Task 2 - Section 3 function
function acquisition()
%%% DATA ACQUSITION %%%
% specify: t, fs , 
fprintf("\nYou have selected data acqusition method.\n\n");

% Selecting the input type: 
prompt= ['\nEnter 1 to capture the speech signal with a microphone,\n'...
    'Enter 2 to choose the speech signal from a file;\n'...
    '1 / 2 :'];

type=input(prompt);

%error check
if((type~=1)&&(type~=2))
        error('You have entered an unexpected value, now we are exiting the program.');
end

if(type==1)
    from_microphone();
elseif (type==2)
    from_file();
end

end



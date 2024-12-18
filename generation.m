function generation()
%%% DATA GENERATION %%%
fprintf("\nYou have selected data generation method.\n\n");

% Selecting the input type: 
prompt=['Sinusoidal signal: [1]\n'...
    'Windowed sinusoidal : [2]\n'...
    'Signal involving multiple components: [3]\n\n'...
    'Enter the corresponding number in brackets for your data generation choice;\n'...
    '1 / 2 / 3 :'];

type=input(prompt);

if((type~=1)&&(type~=2)&&(type~=3))
        error('You have entered an unexpected value, now we are exiting the program.');
end

% Mandatory inputs that will be taken from user
% Regardless of the input type choice

prompt = '\nEnter the sampling rate:';
fs = input(prompt);

prompt= ['\nEnter 1 to enter the total length of the generated data in seconds,\n' ...
    'Enter 2 to enter the total length of the generated data in number of samples;\n' ...
    '1 / 2 :'];

way=input(prompt);

if(way==1)
    prompt='\nEnter the total length of the generated data in seconds:';
    data_in_seconds=input(prompt);
    data_in_samples=data_in_seconds*fs;
elseif (way==2)
    prompt='\nEnter the total length of the generated data in number of samples';
    data_in_samples=input(prompt);
    data_in_seconds=data_in_samples/fs;
else
    error('You have entered an unexpected value, now we are exiting the program.');
end

N=data_in_samples;
t=[0:1/fs:data_in_seconds];

switch type
    case 1
        gen = basic_sin(t);
    case 2
        gen = windowed_sin(fs,t);
    case 3
        gen = mult_comp(t);
end

my_spectrogram(gen,fs);

end





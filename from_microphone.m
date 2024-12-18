
%Sound data from a microphone
%{
Analog-to-digital conversion sampling rate of this process should be adjustable on a user interface. 
The user interface must be designed to allow playing the captured audio input on the speaker of the computer.
%}

function from_microphone()
prompt= ['\nFor recording data from the microphone,\n'...
    'Enter the analog-to-digital conversion sampling rate:'];
fs=input(prompt);
x=Voice_Rec(fs);

%displaying the audio signal
    fprintf('\nDisplaying the time-domain signal...');
    
    x = transpose(x);
    x = x(1,:);
    len = length(x);
    time = len/fs;
    t = 0:1/fs:time;
    t = t(1:len);
    
    figure
    grid on
    plot(t,x);
    title('Time Domain Signal');
    xlabel('Time (seconds)');
    ylabel('Amplitude');
    maxA=max(x);
    ylim([-maxA maxA]);
    xlim([0 max(t)]);

    my_spectrogram(x,fs);
end

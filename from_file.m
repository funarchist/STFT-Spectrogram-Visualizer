% Sound data from a file

%{ 
The system should also be able to process .wav or .mp3 sound files. 
In each case, your code has to retrieve the time-domain signal and the sampling frequency. 
For the files that contain multi-channel data (such as stereo music) you may choose to work with a single channel.
%}

function from_file()
fprintf('\nThe system is able to process .wav or .mp3 sound files.\n');
[x,fs] = Voice_Read();

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

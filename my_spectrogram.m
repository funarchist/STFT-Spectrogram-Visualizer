% MATLAB code to display the spectrogram of a discrete-time signal

function my_spectrogram(x,fs)

fprintf('\n\nSpectogram Process has started...\n');
% Selecting the window type: 
prompt=['\nEnter the name of the Window Function:\n'...
        'Enter R for Rectangular Window\n'...
        'Enter H for Hamming Window\n'...
        'R / H :'];
    
    wf=input(prompt, 's');
    %error check
    if((wf~='R')&&(wf~='H'))
        error('You have entered an unexpected value, now we are exiting the program.');
    end
    prompt=('Enter the window size:');
    ws=input(prompt);
    if (wf=='R')
        w=rectwin(ws);
    elseif (wf=='H')
        w=hamming(ws);
    end
        
overlap=100;
nfft= 2048;

rngs = ["onesided" "twosided" "centered"];

[S,F,T] = stft(x,fs,'Window',w,'FrequencyRange',rngs(1),'Overlaplength',overlap,'FFTLength',nfft);
fprintf('\n\nDisplaying the spectrogram...\n');
figure
grid on
imagesc(T,F,20*log10(abs(S)));
ylabel('Hertz(Hz)');
xlabel('Time(secs)');
title('Spectrogram');
set(gca,'YDir','normal');
colorbar;

end


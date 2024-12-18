function x = windowed_sin(fs,t)
    prompt=['For generating windowed sinusoidal wave;\n\n'...
        'Enter the Amplitude:'];
    A=input(prompt);
    prompt='Enter the Frequency(Hz):';
    f=input(prompt);
    prompt='Enter the Phase(rad):';
    p=input(prompt);
    prompt=['Enter the name of the Window Function:\n'...
        'Enter R for Rectangular Window\n'...
        'Enter H for Hamming Window\n'...
        'R / H :'];
    wf=input(prompt, 's');
    if((wf~='R')&&(wf~='H'))
        error('You have entered an unexpected value, now we are exiting the program.');
    end
    prompt='Enter the starting time:';
    t0=input(prompt);
    if (t0<0)
        error('You have entered an unexpected value, now we are exiting the program.');
    end
    
    prompt='Enter the length:';
    delta=input(prompt);
    
    d=fs*delta; %for finding the index
    shift=t0*fs; %for finding the index
    s = A*sin((2*pi*f*t)+p);
    w=zeros(size(s));
    switch wf
        case 'R'
            w(shift+1:shift+d)=rectwin(d);
        case 'H'
            w(shift+1:shift+d)=hamming(d); 
    end
    
    
    s_shifted=zeros(size(s));
    s_shifted(shift+1:end)=s(1:end-shift);
    %s_shifted(shift+1+d:end)=0;
    
    x=w.*s;
    
    %displaying
    fprintf('\nDisplaying the generated signal...');
    figure
    grid on
    plot(t,x);
    ylim([-A A]);
    xlim([0 max(t)]);
    title('Windowed Sinusoidal');
    xlabel('Time (seconds)');
    ylabel('Amplitude');
end

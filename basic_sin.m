function x = basic_sin(t)
    fprintf('\nFor generating the sinusoidal wave');
    prompt='\nEnter the Amplitude:';
    A=input(prompt);
    prompt='Enter the Frequency(Hz):';
    f=input(prompt);
    prompt='Enter the Phase(rad):';
    p=input(prompt);
    x = A*sin((2*pi*f*t)+p);
    
    %displaying
    fprintf('\nDisplaying the generated signal...');
    figure
    grid on
    plot(t,x);
    ylim([-A A]);
    xlim([0 max(t)]);
    title('Sinusoidal Signal');
    xlabel('Time (seconds)');
    ylabel('Amplitude');
   
end

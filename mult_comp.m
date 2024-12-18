function x = mult_comp(t)
    prompt=['For generating a signal involving multiple components;\n\n'...
        'Enter the number of components:'];
    c=input(prompt);
    
    %take parameters
    p(c,3)=0; 
    
    for k=1:c
        
        fprintf('\nFor component %d;\n',k);
        prompt=('Enter the Amplitude:');
        p(k,1)=input(prompt);
        
        prompt=('Enter the Frequency:');
        p(k,2)=input(prompt);
        
        prompt=('Enter the Phase:');
        p(k,3)=input(prompt);
        
        %generate the sinusoid for the given parameters
        sines(k,:)=p(k,1)* sin((2*pi*p(k,2)*t)+p(k,3));
    end
    
    x=zeros(size(t));
    for j=1:c
        x=x+sines(j,:);
    end
    maxA=abs(max(x));
    %displaying
    fprintf('\nDisplaying the generated signal...');
    figure
    grid on
    plot(t,x);
    ylim([-maxA maxA]);
    xlim([0 max(t)]);
    title('Signal Involving Multiple Components');
    xlabel('Time (seconds)');
    ylabel('Amplitude');
    
end

% 
fprintf('Welcome to EE430 Project Part I\n\n');
prompt= ['Press 1 for Data Acquisition\n'...
        'Press 2 for Data Generation\n'...
        '1 / 2 : '];

way0=input(prompt);

if(way0==1)
    acquisition();
elseif (way0==2)
    generation();
else
    error('You have entered an unexpected value, now we are exiting the program.');
end   

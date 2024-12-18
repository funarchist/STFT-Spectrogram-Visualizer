% read from data helper function

function [voice_read,FS] = Voice_Read()

prompt='\nEnter the full path for the file you would like to read from:';
file_name=input(prompt,'s');
[voice_read,FS]=audioread(file_name);
end

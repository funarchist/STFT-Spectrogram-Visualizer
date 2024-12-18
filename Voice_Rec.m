% Voice record helper function

function x = Voice_Rec(sample_freq)
option = 'n';
option_rec = 'n';
prompt='\nEnter the length for your recording:';
record_len = input(prompt);         
option_rec = input('\nPress y to record:','s');
if option_rec=='y'
  while option=='n'
      input('\nPress enter when you are ready to record--> ');
      recorder=audiorecorder(sample_freq,8,1);
      recordblocking(recorder,record_len);
      x = getaudiodata(recorder);
      input('\nPress enter to listen to the recorded voice--> ');
      sound(x, sample_freq);
      option = input('\nPress n to record again or press any other button to exit: ','s');
     
  end    
 % option_rec = 'n';
end
end

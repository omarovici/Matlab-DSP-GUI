function removeNoiseFromAudio()
    prompt = 'Enter the number of seconds (only from 1 to 9 seconds)';
    dlgTitle = 'seconds';
    numLines = 1;
    defaultInput = {'0'};  
    userNumber = inputdlg(prompt, dlgTitle, numLines, defaultInput);

    seconds = str2double(userNumber{1});

    if isnan(seconds) || seconds < 1 || seconds > 9
        errordlg('Invalid input. Please enter a number between 1 and 9 seconds.');
        return;
    end

    recorder = audiorecorder(44100, 16, 1); 
    disp('Start speaking...');
    recordblocking(recorder, seconds);
    disp('Recording complete.');

    audio_data = getaudiodata(recorder);

    cutoff_frequency = 500; 
    filter_order = 10; 
    high_pass_filter = designfilt('highpassfir', 'FilterOrder', filter_order, 'CutoffFrequency', cutoff_frequency, 'SampleRate', 44100);
    audio_data_clean = filter(high_pass_filter, audio_data);

    disp('Playing cleaned audio...');
    soundsc(audio_data_clean, 44100);
end

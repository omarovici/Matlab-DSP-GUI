function RecordAudiospeed()
    fs = 22050; 
    recordedAudio = audiorecorder(fs, 16, 1);

    prompt = 'Enter the number of seconds (only from 1 to 9 seconds)';
    dlgTitle = 'seconds';
    numLines = 1;
    defaultInput = {'0'};  
    userNumber = inputdlg(prompt, dlgTitle, numLines, defaultInput);

    userNumber = str2double(userNumber{1});

    recordblocking(recordedAudio, userNumber);

    speedChoice = questdlg('Choose the speed:', 'Speed Selection', '2x', '0.5', '2x');

    switch speedChoice
        case '2x'
            fs = fs * 2.5;
        case '0.5'
            fs = fs * 0.6;
    end

    x = getaudiodata(recordedAudio);

    player = audioplayer(x, fs);
    playblocking(player);
end
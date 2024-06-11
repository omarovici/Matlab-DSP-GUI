function RecordAudioButtonWithVolumeControlPushed()
    fs = 22050; 
    recordedAudio = audiorecorder(fs, 16, 1);

    prompt = 'Enter the number of seconds (only from 1 to 9 seconds)';
    dlgTitle = 'seconds';
    numLines = 1;
    defaultInput = {'0'};  
    userNumber = inputdlg(prompt, dlgTitle, numLines, defaultInput);

    userNumber = str2double(userNumber{1});

    recordblocking(recordedAudio, userNumber);

    x = getaudiodata(recordedAudio);
    audiowrite('recorded_audio.wav', x, fs);

   
    options = {'Increase Volume', 'Decrease Volume'};
    choice = questdlg('Choose an option:', 'Volume Options', options{:}, 'Increase Volume');

    
    switch choice
        case 'Increase Volume'
            increaseVolume(x, fs);
        case 'Decrease Volume'
            decreaseVolume(x, fs);
    end
end

function increaseVolume(audioData, fs)
    volume = 2; 
    player = audioplayer(audioData * volume, fs);
    
    msgbox('Playing with increased volume (200%):', 'Increased Volume', 'modal');

    playblocking(player);
    disp('Playback with increased volume complete.');
end

function decreaseVolume(audioData, fs)
    volume = 0.2;
    player = audioplayer(audioData * volume, fs);

    msgbox('Playing with decreased volume (20%):', 'Decreased Volume', 'modal');

    playblocking(player);
    disp('Playback with decreased volume complete.');
end
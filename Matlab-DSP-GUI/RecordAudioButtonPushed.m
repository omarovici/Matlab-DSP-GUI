function RecordAudioButtonPushed()
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
    player = audioplayer(x, fs);

    choice = questdlg('Choose an option:', 'Audio Effect', 'Clean', 'Noisy Effect', 'Clean');

    switch choice
        case 'Clean'
            disp('Playing clean audio...');
            playblocking(player);
            disp('Playback complete.');

        case 'Noisy Effect'
            whiteNoise = 0.1 * randn(size(x)); 
            x_with_noise = x + whiteNoise;

            disp('Playing audio with noisy effect...');
            player_with_noise = audioplayer(x_with_noise, fs);
            playblocking(player_with_noise);
            disp('Playback complete with noisy effect.');

        otherwise
            disp('User canceled the operation.');
    end
end
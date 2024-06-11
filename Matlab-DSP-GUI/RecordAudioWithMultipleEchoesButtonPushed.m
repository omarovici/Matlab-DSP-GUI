function RecordAudioWithMultipleEchoesButtonPushed()
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

    numEchoes = 3; 
    echoedAudio = x;

    for i = 1:numEchoes
        delaySeconds = 0.5 * i; 
        delaySamples = round(delaySeconds * fs);

        delayedAudio = [zeros(delaySamples, size(x, 2)); x(1:end-delaySamples, :)];

        decayFactor = 0.5; 
        delayedAudio = delayedAudio * decayFactor;

        echoedAudio = echoedAudio + delayedAudio;
    end
    
    msgbox(['Here is the recorded audio with echos.'], 'Recorded Audio with Echoes');

    player = audioplayer(echoedAudio, fs);
    disp(['Playing with echoes']);
    playblocking(player);
end
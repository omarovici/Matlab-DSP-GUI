function subAudioFiles()
    file2 = 'chipi chipi dubi dubi Cat Dancing.wav';
    file1 = '10 Second Beep Timer.wav';

    [audio1, fs1] = audioread(file1);
    [audio2, fs2] = audioread(file2);

    min_length = min(length(audio1), length(audio2));
    audio1 = audio1(1:min_length);
    audio2 = audio2(1:min_length);

    multiplied_audio = audio1 - audio2;

    subplot(3, 1, 1);
    plot((1:length(audio1)) / fs1, audio1);
    title('Audio 1 chipi');
    xlabel('Time (s)');
    ylabel('Amplitude');

    subplot(3, 1, 2);
    plot((1:length(audio2)) / fs2, audio2);
    title('Audio 2 Beep');
    xlabel('Time (s)');
    ylabel('Amplitude');

    subplot(3, 1, 3);
    plot((1:length(multiplied_audio)) / min(fs1, fs2), multiplied_audio);
    title('Subracted Audio');
    xlabel('Time (s)');
    ylabel('Amplitude');

end

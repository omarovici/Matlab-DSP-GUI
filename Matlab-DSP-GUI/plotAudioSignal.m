function plotAudioSignal()
    fileName = 'chipi_chipi_dubi_dubi_Cat_Dancing.wav';

    [audio, fs] = audioread(fileName);

    duration = length(audio) / fs;
    time = linspace(0, duration, length(audio));

    subplot(1,1,1);
    plot(time, audio);
    xlabel('Time (s)');
    ylabel('Amplitude');
    title('Audio chipi');
end
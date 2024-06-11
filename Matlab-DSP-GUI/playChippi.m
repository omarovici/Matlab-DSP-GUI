function playChippi()
    audioFileName = 'chipi_chipi_dubi_dubi_Cat_Dancing.wav';

    [audioData, samplingRate] = audioread(audioFileName);

    sound(audioData,samplingRate);
end
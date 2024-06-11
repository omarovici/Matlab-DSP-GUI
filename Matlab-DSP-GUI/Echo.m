function Echo(y, Fs)
    delay = Fs/2;
    attenuation = 0.5;
    echo = [zeros(delay, size(y, 2)); y * attenuation];
    output_signal = y + echo(1:length(y));
    output_signal = output_signal / max(abs(output_signal));
    disp('Echo Audio');
    sound(output_signal, Fs);
end

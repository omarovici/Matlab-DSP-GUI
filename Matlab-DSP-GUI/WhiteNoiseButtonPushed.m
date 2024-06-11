function WhiteNoiseButtonPushed()
            fs = 44100; 
            whiteNoise = randn(1, fs);
            sound(whiteNoise, fs);
end
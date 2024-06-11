        function AddNoiseButtonPushed()
                  uwu = 'chipi_chipi_dubi_dubi_Cat_Dancing.wav';  
    [audio, fs] = audioread(uwu);
    
    % Update audioData and fs properties
    app1.audioData = audio;
    app1.fs = fs;
    
                % Specify noise level (adjust as needed)
                noiseLevel = 0.1;
                
                % Generate noise and add it to the audio
                noisyAudio = audio + noiseLevel * randn(size(audio));
                
                % Play the noisy audio using sound
                sound(noisyAudio, app1.fs);
            
       
        end
function createGUI3
    fig = figure('Name', 'Simple GUI', 'Position', [100, 100, 400, 300]);

    btn1 = uicontrol('Style', 'pushbutton', 'String', 'Beep', ...
        'Position', [20, 250, 100, 20], ...
        'BackgroundColor', [0.8, 0.2, 0.2], ... 
        'Callback', @(src, event) buttonCallback(1, @detailedBeep));

    btn2 = uicontrol('Style', 'pushbutton', 'String', 'White Noise', ...
        'Position', [20, 225, 100, 20], ...
        'BackgroundColor', [0.2, 0.8, 0.2], ...
        'Callback', @(src, event) buttonCallback(2, @WhiteNoiseButtonPushed));

    btn3 = uicontrol('Style', 'pushbutton', 'String', 'play Chippi', ...
        'Position', [20, 200, 100, 20], ...
        'BackgroundColor', [0.2, 0.2, 0.8], ...
        'Callback', @(src, event) buttonCallback(3, @playChippi));

    btn4 = uicontrol('Style', 'pushbutton', 'String', 'Noisy Chippi', ...
        'Position', [20, 175, 100, 20], ...
        'BackgroundColor', [0.8, 0.8, 0.2], ...
        'Callback', @(src, event) buttonCallback(4, @AddNoiseButtonPushed));

    btn5 = uicontrol('Style', 'pushbutton', 'String', 'Record and play', ...
        'Position', [20, 150, 100, 20], ...
        'BackgroundColor', [0.5, 0.5, 0.5], ...
        'Callback', @(src, event) buttonCallback(5, @RecordAudioButtonPushed));

    btn6 = uicontrol('Style', 'pushbutton', 'String', 'Record with echoes', ...
        'Position', [20, 125, 100, 20], ...
        'BackgroundColor', [0.7, 0.5, 0.1], ...
        'Callback', @(src, event) RecordAudioWithMultipleEchoesButtonPushed());

    btn7 = uicontrol('Style', 'pushbutton', 'String', 'Change Volume', ...
        'Position', [20, 100, 100, 20], ...
        'BackgroundColor', [0.1, 0.7, 0.5], ...
        'Callback', @(src, event) RecordAudioButtonWithVolumeControlPushed());

    btn8 = uicontrol('Style', 'pushbutton', 'String', 'speed changer', ...
        'Position', [20, 75, 100, 20], ...
        'BackgroundColor', [0.5, 0.1, 0.7], ...
        'Callback', @(src, event) RecordAudiospeed); 
    
    btn9 = uicontrol('Style', 'pushbutton', 'String', 'Remove Noise', ...
        'Position', [20, 50, 100, 20], ...
        'BackgroundColor', [0.9, 0.6, 0.2], ...
        'Callback', @(src, event) buttonCallback(9, @addWhiteNoise))
    
    btn10 = uicontrol('Style', 'pushbutton', 'String', 'Plot Audio Signal', ...
        'Position', [20, 25, 100, 20], ...
        'BackgroundColor', [0.4, 0.2, 0.9], ...
        'Callback', @(src, event) buttonCallback(10, @plotAudioSignal));
    btn11 = uicontrol('Style', 'pushbutton', 'String', 'Mutltiply', ...
        'Position', [150, 250, 100, 20], ...
        'BackgroundColor', [0.1, 0.9, 0.1], ...
        'Callback', @(src, event) buttonCallback(11, @multiplyAudioFiles));

    btn12 = uicontrol('Style', 'pushbutton', 'String', 'Subtract', ...
        'Position', [150, 225, 100, 20], ...
        'BackgroundColor', [0.9, 0.3, 0.5], ...
        'Callback', @(src, event) buttonCallback(12, @subAudioFiles));

    function buttonCallback(buttonNumber, callbackFunction)
        disp(['Button ' num2str(buttonNumber) ' pressed!']);
        
        callbackFunction();
    end
end
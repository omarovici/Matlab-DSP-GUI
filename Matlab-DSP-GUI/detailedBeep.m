function detailedBeep()
fs = 44100;
t=0:1/fs:1;
beep=sin(2*pi*400*t);
sound(beep,fs);
end
function echo_fun(sound, fs)
  x = 0.1;
  a = 0.5; 
  d = round(x * fs);
  echo = zeros(size(sound));
  for i = 1:length(sound)
    if i > d
      echo(i) = sound(i) + a * sound(i - d);
    else
      echo(i) = sound(i);
    end
  end
  echo = max(min(echo, 1), -1);
  soundsc(echo, fs);
end

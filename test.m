file = 'MF Doom - Rapp Snitch Knishes [Instrumental].ogg';
file2 = 'JonTron Original Theme - Seamless 10 Minute Extended Loop.ogg';
[M, fs] = audioread(file);

player = audioplayer (M, fs);
play(player);

while (isplaying(player))
  speed = input('Enter Speed');
  if (speed != 0)
    values = get(player);
    value = values.CurrentSample;
    disp(value);
    player = audioplayer(M, fs*speed);
    play(player, value);
  else
    pause(player);
    break;
   endif
endwhile
#infinite loop
display('Player Paused, BYE');
% loading the signal
load("Audio_Signals\file1.asc")

% playing the original signal
soundsc(file1, 16000)
disp("This is the original signal.");
disp("Press enter to continue.");
disp("-----------------------------------------------");
pause;

% wrong interpolated signal
newInterpSig = interp(file1, 4);
soundsc(newInterpSig, 32000)
disp("This is the wrong interpolated signal(just for testing).");
disp("Press enter to continue.");
disp("-----------------------------------------------");
pause;

% correct interpolated signal
newInterpSig = interp(file1, 4);
soundsc(newInterpSig, 64000)
disp("This is the correct interpolated signal.");

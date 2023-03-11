% loading the signal
load("Audio_Signals\file1.asc")

% playing the original signal
soundsc(file1, 16000)
disp("This is the original signal.");
disp("Press enter to continue.");
disp("-----------------------------------------------");
pause;

% wrong decimated signal
newDecimSig = decimate(file1, 5);
soundsc(newDecimSig, 3200)
disp("This is the wrong decimated signal(just for testing).");
disp("Press enter to continue.");
disp("-----------------------------------------------");
pause;

% correct signal
newSignal = interp(file1, 4);
newSignal = decimate(newSignal, 5);
soundsc(newSignal, 12800)
disp("This is the correct decimated signal.");

% defining variables
R = 8;
N = 60;

% loading the signal
load("Audio_Signals\file1.asc")

% playing the original signal
soundsc(file1, 16000)
disp("This is the original signal.");
disp("Press enter to continue.");
disp("-----------------------------------------------");
pause;

% decimated signal
newSig = decimate(file1, R, N, 'fir');
newSig = interp(newSig, 8);
soundsc(newSig, 16000)
disp("This is the decimated and filtered signal(using chebyshev filter).");
disp("Press enter to continue.");
disp("-----------------------------------------------");

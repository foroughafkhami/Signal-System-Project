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
decimSig = decimate(file1, R, N, 'fir');
soundsc(decimSig, 2000)
disp("This is the decimated and filtered signal(using chebyshev filter).");
disp("Press enter to continue.");
disp("-----------------------------------------------");

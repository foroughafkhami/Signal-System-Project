% loading the signal
load("Audio_Signals\file2.asc");

% defining variables
fs = 8000;

% playing the sound
disp("The advanced part of the project starts in 1 seconds...");
pause(1);
soundsc(file2, fs, 16);

% FF2 -> frequency-axis of file2
% FTF2 -> fourier transform of file 2
[FF2, FTF2] = FT(fs, file2);

% plotting the signal
plot(FF2, FTF2);
xlabel("f(Hz)");
ylabel("frequency domain");
title("Audio Signal");
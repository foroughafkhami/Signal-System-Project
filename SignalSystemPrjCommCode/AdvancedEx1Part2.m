% loading the signals
load("Audio_Signals\noisysignal.txt");
load("Audio_Signals\file2.asc");

% defining variables
fs = 8000;

% playing the signal
disp(" Press any key to play noisy signal.");
pause;
soundsc(noisysignal, fs, 16); %  The noisy one

% FNS -> frequency of noisysignal
% FTNS -> fourier transform of noisysignal
[FNS, FTNS] = FT(fs, noisysignal);

% FF2 -> frequency-axis of file2
% FTF2 -> fourier transform of file 2
[FF2, FTF2] = FT(fs, file2);

% displaying the signals
disp(" Press any key to plot the signals. ");
pause;

subplot(2, 1, 1);
plot(FF2, FTF2);
title("orginal signal");
xlabel("f(Hz)");
ylabel("Amplitude");

subplot(2, 1, 2);
plot(FNS, FTNS);
title("noisy signal");
xlabel("f(Hz)");
ylabel("Amplitude");

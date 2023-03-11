% loading the signals
load("Audio_Signals\noisysignal.txt");
load("Audio_Signals\file2.asc");

% defining variables
fs = 8000;

% FNS -> frequency of noisysignal
% FTNS -> fourier transform of noisysignal
[FNS, FTNS] = FT(fs, noisysignal);

% FF2 -> frequency-axis of file2
% FTF2 -> fourier transform of file 2
[FF2, FTF2] = FT(fs, file2);

% definnig Wn_Frequency
% bound (Nyquist frequency is half the samplerate= fs/2 = 4000)
% Wn=[850 1150] 50hz offset is for possible noise.
% FIR -> Finite Impulse Response
Wn = [880 1120] / (fs / 2);
filt = fir1(2048, Wn, 'stop'); % 'stop' specifies a bandstop filter.

% Filter the output noisy signal.
filtered_signal = fftfilt(filt, noisysignal);

disp(" filtering...");
pause(1);

soundsc(filtered_signal, fs, 16);

% FFS -> frequency of filtered_signal
% FTFS -> fourier transform of filtered_signal
[FFS, FTFS] = FT(fs, filtered_signal);

% displaying signals
subplot(3, 1, 1);
plot(FF2, FTF2);
title("orginal signal");
xlabel("f");
ylabel("domain");

subplot(3, 1, 2);
plot(FNS, FTNS);
title("noisy signal");
xlabel("f");
ylabel("domain");

subplot(3, 1, 3);
plot(FFS, FTFS);
title("filtered signal");
xlabel("f");
ylabel("domain");

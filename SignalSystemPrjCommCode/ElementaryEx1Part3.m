% Defining Variables
f0 = 0;
f1 = 500;
T = 10;
fs = 800;
c = (f1 - f0) / T;

% defining time domain
t = 0:(1 / fs):10;

% defining function
x = 0.5 * sin(2 * pi * ((c / 2) * (t.^2) + (f0 * t)));

% playing the sound
sound(x, fs)

% defining the input signal
n = 0:50;
x = (3/4).^n;

% defining w-axis
w = -pi:0.01:pi;

% diffrence equation:y[n] - 3/4y[n - 1] = -3/4x[n] + x[n - 1]
% defining variables
% a: coefficients of y
% b: coefficients of x
a = [1 -3/4];
b = [-3/4 1];

% defining output function
y = filter(b, a, x);

% defining fourier transform of input and output signals
Xw = fft(x, length(w));
Xw = fftshift(Xw);
Yw = fft(y, length(w));
Yw = fftshift(Yw);

% plotting fourier transform of input signal
subplot(2, 1, 1);
plot(w, abs(Xw))
title('|X(w)|');
xlabel('w');
grid on

% plotting fourier transform output signal
subplot(2, 1, 2);
plot(w, abs(Yw))
title('|Y(w)|');
xlabel('w');
grid on

% diffrence equation:y[n] - 3/4y[n - 1] = -3/4x[n] + x[n - 1]
% defining variables
% a: coefficients of y
% b: coefficients of x
a = [1 -3/4];
b = [-3/4 1];

% defining the input signal
n = 0:50;
x = (3/4).^n;

% defining w-axis
w = -pi:0.01:pi;

% defining output function 1
y1 = filter(b, a, x);

% defining output function 2
y2 = filter(b, a, y1);

% defining output function 2
y3 = filter(b, a, y2);



% defining fourier transform of input signal
Xw = fft(x, length(w));
Xw = fftshift(Xw);

% defining fourier transform of 3 output siganls
Y1w = fft(y1, length(w));
Y1w = fftshift(Y1w);

Y2w = fft(y2, length(w));
Y2w = fftshift(Y2w);

Y3w = fft(y3, length(w));
Y3w = fftshift(Y3w);

% plotting fourier transform of input signal
subplot(4, 1, 1);
plot(w, abs(Xw))
title('|X(w)|');
xlabel('w');
grid on

% plotting fourier transform of output signal 1
subplot(4, 1, 2);
plot(w, abs(Y1w))
title('|Y1(w)|');
xlabel('w');
grid on

% plotting fourier transform of output signal 2
subplot(4, 1, 3);
plot(w, abs(Y2w))
title('|Y2(w)|');
xlabel('w');
grid on

% plotting fourier transform of output signal 3
subplot(4, 1, 4);
plot(w, abs(Y3w))
title('|Y3(w)|');
xlabel('w');
grid on

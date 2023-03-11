% diffrence equation:y[n] - 3/4y[n - 1] = -3/4x[n] + x[n - 1]
% defining variables
% a: coefficients of y
% b: coefficients of x
a = [1 -3/4];
b = [-3/4 1];

% defining w-axis
w = -2 * pi:0.01:2 * pi;

% H: frequency response
H = freqz(b, a, w);

% plotting the frequency response
subplot(2, 2, 1);
plot(w, real(H))
axis([-2 * pi 2 * pi -1.5 1.5])
title('Real(H(w))')
xlabel('w')
grid on

subplot(2, 2, 2);
plot(w, imag(H))
axis([-2 * pi 2 * pi -3 3])
title('Im(H(w))')
xlabel('w')
grid on

subplot(2, 2, 3);
plot(w, abs(H))
axis([-2 * pi 2 * pi -3 3])
title('|H(w)|')
xlabel('w')
grid on

subplot(2, 2, 4);
plot(w, angle(H))
axis([-2 * pi 2 * pi -4 4])
title('phase(H(w))')
xlabel('w')
grid on

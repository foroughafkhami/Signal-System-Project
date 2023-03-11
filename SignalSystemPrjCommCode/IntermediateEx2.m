% defining the input signal
n = 0:50;
x = (3/4).^n;

% diffrence equation:y[n] - 3/4y[n - 1] = -3/4x[n] + x[n - 1]
% defining variables
% a: coefficients of y
% b: coefficients of x
a = [1 -3/4];
b = [-3/4 1];

% defining output function
y = filter(b, a, x);

% plotting input signal
subplot(2, 1, 1);
stem(n, x)
title('x[n]');
xlabel('n');
grid on

% plotting output signal
subplot(2, 1, 2);
stem(n, y)
title('y[n]');
xlabel('n');
grid on

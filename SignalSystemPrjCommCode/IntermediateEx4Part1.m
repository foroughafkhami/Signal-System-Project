% diffrence equation:y[n] - 3/4y[n - 1] = -3/4x[n] + x[n - 1]
% defining variables
% a: coefficients of y
% b: coefficients of x
a = [1 -3/4];
b = [-3/4 1];

% defining the input signal
n = 0:50;
x = (3/4).^n;

% defining output function 1
y1 = filter(b, a, x);

% defining output function 2
y2 = filter(b, a, y1);

% defining output function 2
y3 = filter(b, a, y2);

% plotting input function
subplot(4, 1, 1);
stem(n, x)
title('x[n]');
xlabel('n');
grid on

% plotting output function 1
subplot(4, 1, 2);
stem(n, y1)
title('y1[n]');
xlabel('n');
grid on

% plotting output function 2
subplot(4, 1, 3);
stem(n, y2)
title('y2[n]');
xlabel('n');
grid on

% plotting output function 3
subplot(4, 1, 4);
stem(n, y3)
title('y3[n]');
xlabel('n');
grid on

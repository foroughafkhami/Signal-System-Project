% diffrence equation:y[n] - 3/4y[n - 1] = -3/4x[n] + x[n - 1]
% defining variables
% a: coefficients of y
% b: coefficients of x
a = [1 -3/4];
b = [-3/4 1];

zplane(b, a);
text(0.73, 0.1, '\downarrow (0.75, 0)');
text(1.315, 0.1, '\downarrow (1.33, 0)');
grid on

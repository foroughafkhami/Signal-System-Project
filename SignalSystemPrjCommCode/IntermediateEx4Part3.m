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

Enx = sum(x.^2);
Eny1 = sum(y1.^2);
Eny2 = sum(y2.^2);
Eny3 = sum(y3.^2);

fprintf(['En{x[n]} = %.4f\n\n', ...
        'En{y1[n]} = %.4f\n\n', ...
        'En{y2[n]} = %.4f\n\n', ...
        'En{y3[n]} = %.4f\n\n'], ...
    Enx, Eny1, Eny2, Eny3);

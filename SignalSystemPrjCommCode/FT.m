function [f, Xw] = FT(fs, xn)
    %{
    Inputs:
    fs - > sampling frequency
    xn - > discrete signal

    Outputs:
    f - > frequency range
    Xw - > fourier transform
    %}
    n = 2^nextpow2(length(xn));
    y = fft(xn, n);
    y = abs(y);
    N = length(y);
    Xw = y(1:N / 2);
    f = (0:N / 2 - 1) .* fs / N;
end

function y = fastft(x)
%touky -kouly algorithm implimented recersivly
N = length(x);
if N == 1
    y = x;
else
    even = fastft(x(1:2:N));
    odd = fastft(x(2:2:N));
    M = N / 2;
    W = exp(-2i*pi*(0:M-1)/N);
    l = even(1:M) + W.*odd(1:M);
    r = even(1:M) - W.*odd(1:M);
    y = [l,r];
end
    end
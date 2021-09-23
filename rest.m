function wave = rest(n,fs)
    t = 0:1/fs:4/n;
    tt = 4/n:-1/fs:0;
    wave = 0*sin(2*pi*t).*exp(tt);
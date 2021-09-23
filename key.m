function wave = key(p, n, fs)
    t = 0:1/fs:4/n;
    idx = 440*2^((p-49)/12);
    
%     method 1 - orginal
%     wave = (sin(2*pi*idx*t));
%     method 2 - exponential decreasing 
%     tt = 4/n:-1/fs:0;
%     wave = (sin(2*pi*idx*t)).*exp(tt);
%     wave = wave./max(wave);
    
%     method 3 - triangle decreasing 
    mid = (t(1)+t(end))/2;
    tri = -(abs(t-mid)-mid);
    tri = tri./max(tri);
    wave = (sin(2*pi*idx*t)).*tri;
    
%     plot(wave)
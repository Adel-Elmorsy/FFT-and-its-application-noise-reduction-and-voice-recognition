fs = 44100;
% rest
zero = rest(4,fs);     % 1.0 sec
zeroh = rest(8,fs);    % 0.5 sec
zerohh = rest(16,fs);  % 0.25 sec
% eighth note as 0.5 sec
do1 = key(52,8,fs);  %do 1
re = key(54,8,fs);  %re 2
mi = key(56,8,fs);  %mi 3
fa = key(57,8,fs);  %fa 4
so = key(59,8,fs);  %so 5
la = key(61,8,fs);  %la 6
si = key(63,8,fs);  %si 7
% quarter note as 1 sec
do_4 = key(52,4,fs);  %do 1
re_4 = key(54,4,fs);  %re 2
mi_4 = key(56,4,fs);  %mi 3
fa_4 = key(57,4,fs);  %fa 4
so_4 = key(59,4,fs);  %so 5
la_4 = key(61,4,fs);  %la 6
si_4 = key(63,4,fs);  %si 7
% make a song
line1 = [ do1 do1 so so la la so_4];
line2 = [ do1 do1 re mi fa fa so so la la la_4 do1 do1 re mi fa fa so so la la la do1 do1 re mi fa fa so so la la la ];
line3 = [ so so fa fa mi mi re_4 ];
line4 = [ so so fa fa mi mi re_4];
line5 = [ do1 do1 so so la la so_4];
line6 = [ fa fa mi mi re re do_4];
song = [line1 line2 line3 line4 line5 line6];
% plot(song)
o=song+rand(1,length(song));
l=length(o);
n=2^(fix(log2(l)));
o=o(1:n);
sound(o,fs);
plot(abs(fft(o)))
% audiowrite('star.wav',song,fs,'BitsPerSample',32);
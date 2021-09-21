function filered_signal = AmpassF(input_sgn, a,b )
% take either a minimume amplitude or a range 
%returns a signal filtered of the freqs corespondind to those amplituses
   
    ft=fft(input_sgn);
    ab=abs(ft);
    if ~isempty(b)
    
         ft(ab<a & ab > b)=0;
         
    else
          ft(ab<a)=0;
    
   
           
        end
filered_signal=ifft(input_sgn,'symmetric') %ifft help 
    
end
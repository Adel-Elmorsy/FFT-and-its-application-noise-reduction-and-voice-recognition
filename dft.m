function [Xk] = dft(xn)
N=length(xn);
n = 0:N-1; 
k = 0:N-1; 
WN = exp(-1j*2*pi/N); % Twiddle factor (w)
nk = n'*k; % creates fourir matrix
WNnk = WN .^ nk; % DFT matrix
Xk = (WNnk*xn' );
end
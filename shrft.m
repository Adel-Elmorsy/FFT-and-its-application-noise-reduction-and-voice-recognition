function y=shrft(x)
x=x';
n=length(x);
t=log2(n);

x = bitrevorder(x);
y=x;
for q=1:t
L=2^q;r=n/L;
w = exp(2*pi*i/L).^[0:(L/2)-1];
si=diag(w);

b=[eye(L/2) si;eye(L/2) -si ];
y=kron(eye(r),b)*y;
end
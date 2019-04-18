n=-20:20;
unitstep = double(n>=0); % define a discrete heaviside (unit step) function
f = (0.8).^n.*unitstep;
h = (0.5).^n.*unitstep;
g = conv(f,h); % convolution between f and h
subplot(3,1,1);
stem(n,f);
xlabel('time, n'); ylabel('f[n]');
subplot(3,1,2);
stem(n,h);
xlabel('time, n'); ylabel('h[n]');
subplot(3,1,3);
N = ceil(length(h)/2)
size(g)
size(n)
size(g(N:end-N+1))
stem(n,g(N:end-N+1));
xlabel('time, n'); ylabel('g[n]');
shg;
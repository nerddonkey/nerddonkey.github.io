tinc = 0.01;
t = -3:tinc:3;
tt = t;
% tt = -t;
% tt = -3*t;
% tt = -t/3;
% tt = 3*t - 1
f = exp(-tt).*cos(2*pi*tt).*heaviside(tt);
plot(t,f);
xlabel('time, t (seconds)');
ylabel('f(t)');
shg;
t=[-10:0.1:10];
alpha=-0.2+2*j;
C=0.5+.7*j;
yt=C*exp(alpha*t);
%plot(t, real(yt));shg
plot3(t, real(yt), imag(yt))
xlabel('time')
axis square
shg

t=[-10:0.1:10];
alpha=-0.2+2*j;
C=0.5+.7*j;
yt=C*exp(alpha*t);
plot3(t, real(yt), imag(yt),'green')
hold on;

n=[-10:10];
alpha=-0.2+2*j;
C=0.5+.7*j;
yn=C*exp(alpha*n);
plot3(n, real(yn), imag(yn),'*')
xlabel('time')
axis square
hold off;
shg
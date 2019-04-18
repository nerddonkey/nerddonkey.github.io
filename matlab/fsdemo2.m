k_max=44;
kk=[-k_max:k_max]

t_max=15;
t=[-t_max:0.01:t_max];

x=zeros( size(t) );

wid=0.25;

for k=kk
	kkk=k+0.0001;
	a = sin(2*pi*kkk* wid/2 )/(kkk*pi)
	x=x+ a  *exp(1j*k*t);
end

plot(t,real(x) .* cos(0.1*t)/wid); hold on
plot(t,cos(0.1*t),'--r'); hold off
shg

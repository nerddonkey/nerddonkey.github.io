k_max=44;
kk=[-k_max:k_max]

t_max=15;
t=[-t_max:0.01:t_max];

x=zeros( size(t) );

for k=kk
	kkk=k+0.0001;
	a = sin(2*pi*kkk* 0.05 )/(kkk*pi)
	x=x+ a  *exp(1j*k*t);
end


plot(real(x) .* cos(0.15*t)); hold on
plot(cos(0.15*t)); hold off
shg

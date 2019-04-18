v=[1 1];
v=v/norm(v,1); % i.e., v=[0.5 0.5];
for n = 1:8
    v=conv(v,v);
end

% plot the function
subplot('position',[0.07 0.55 0.9 0.4])
plot(v)
a=axis; a(1)=1; a(2)=size(v,2); axis(a)

% plot the log of function
subplot('position',[0.07 0.07 0.9 0.4])
plot(log(v))
a=axis; a(1)=1; a(2)=size(v,2); axis(a)

set(gcf,'PaperUnits','inches','PaperPosition',[0 0 8 6]) %150dpi
saveas(gcf, 'figures/clt', 'png')
shg
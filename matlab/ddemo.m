dd=0.05; % small step size
tt=[-15:dd:10]; % time samples

% some arbitrary function (change this)
f=exp(-tt.^2/20) .* (sin(tt)+tt.^2/20-0.8*cos(pi*tt));

pos=[0.07 0.74 0.9 0.24];
% plot the function
subplot('position',pos)
plot(tt,f,'black'); hold on % draw as line
plot(tt,f,'.black'); hold off % superimpose the points as dots
xlabel('time t')
ylabel('function f')

% compute our approximate derivative
dfdt=deriv(f, dd);

% plot the derivative
pos(2)=pos(2)-0.33;
subplot('position',pos)
plot(tt,dfdt,'red'); hold on
plot(tt,dfdt,'.red'); hold off
xlabel('time t')
ylabel('derivative df/dt')

% approximate second derivative function
ddfdtt=deriv(deriv(f, dd), dd);

% plot the second derivative
pos(2)=pos(2)-0.33;
subplot('position',pos)
plot(tt,ddfdtt,'blue'); hold on
plot(tt,ddfdtt,'.blue'); hold off
xlabel('time t')
ylabel('derivative d^2f/dt^2')

set(gcf,'PaperUnits','inches','PaperPosition',[0 0 8 6]) %150dpi
saveas(gcf, 'figures/ddemo', 'png')
shg
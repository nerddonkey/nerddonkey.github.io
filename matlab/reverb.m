%REVERB This script reads in an audio file in wav format.  That audio
%file happens to be sampled at 11.025kHz.  It applies a very simple LTI
%system and writes out an output wav format audio file.  These audio files
%need to be in a wav subdirectory.
fs=11025;

% read the sound and play it
x=audioread('reverb/reverb-in.wav');
sound(x,fs)

% reverb settings
clear h;
h(1)=0.6;
h(3001)=+0.4;

% apply the reverb and play it
y = conv(x,h);
% pause; sound( y, fs )
audiowrite('reverb/reverb-out.wav',y,fs);

% slower
f8=8000;
audiowrite('reverb/reverb-out8.wav',y,f8);

% plot waveforms
subplot(2,1,1);
plot(x)
xlabel('n - time samples (at 11025 Hz)')
ylabel('x[n] - amplitude')
axis([0 80000 -1.5 1.5])
set(gca,'position',[0.08 0.58 0.9 0.4],'units','normalized');
subplot(2,1,2);
plot(y)
xlabel('n - time samples (at 11025 Hz)')
ylabel('y[n] - amplitude')
axis([0 80000 -1.5 1.5])
set(gca,'position',[0.08 0.08 0.9 0.4],'units','normalized');
saveas(gcf, 'reverb/reverb', 'png')
shg
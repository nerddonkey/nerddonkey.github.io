fprintf('\nALIASING with subsampling\n\nHit any key when paused from the Command Window\n\n')
fs=44100;
dec=12;

%% read the sound and play it
audR=audioread('reverb/violin.wav');
x=audR(:,1); % left channel (source is stereo)
sound(x,fs)
disp('@@@ original audio at 44.1 kHz')
pause

%% decimate the audio and play
xdec=x(1:dec:end);
sound(xdec,fs/dec)
disp('@@@ downsampled audio at 44.1/dec kHz')
pause

%%
passfreq=1/dec;
lpf = designfilt('lowpassfir','PassbandFrequency',0.9*passfreq, ...
         'StopbandFrequency',1.0*passfreq,'PassbandRipple',0.5, ...
         'StopbandAttenuation',65,'DesignMethod','kaiserwin');
%fvtool(lpf)

lpfx=conv(x,lpf.Coefficients); % filter via convolution
sound(lpfx,fs)
disp('@@@ lpf audio at 44.1 kHz')
pause

lpfxdec=lpfx(1:dec:end);
sound(lpfxdec,fs/dec)
disp('@@@ downsampled lpf audio at 44.1/dec kHz')
pause

sound(xdec,fs/dec)
disp('@@@ downsampled audio at 44.1/dec kHz (again, high frquencies aliased to low ones)')

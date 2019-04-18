[f,Fs] = audioread('test_sound.wav','double');
Fs
sound(f,Fs);
pause(1)
len=60;
h=ones(1,len)/5;
sound(conv(f,h),Fs)


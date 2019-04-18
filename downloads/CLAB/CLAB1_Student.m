clc; clear all; close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Student Name:
% Student ID:
% Student Group:

% Student Name:
% Student ID:
% Student Group:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 TASK 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1-1: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tinc = 
t    = 
f    = 

figure; plot(t,f,'b','LineWidth',1.5); xlabel('time, t (seconds)'); ylabel('f(t)');
% 1-2: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% (A)
f_a  = 

% (B)
f_b  = 

% (C)
f_c  = 

% (D)
f_d  = 

figure; plot(t,f_a,'b','LineWidth',1.5); xlabel('time, t (seconds)'); ylabel('f(-t)');
figure; plot(t,f_b,'b','LineWidth',1.5); xlabel('time, t (seconds)'); ylabel('f(-3t)');
figure; plot(t,f_c,'b','LineWidth',1.5); xlabel('time, t (seconds)'); ylabel('f(-t/3)');
figure; plot(t,f_d,'b','LineWidth',1.5); xlabel('time, t (seconds)'); ylabel('f(3t-1)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                TASK 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2-1: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% 2-2: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% What is the fundamental period of each of the signals in 2-1? Please type
% your comment your answer in the space below.
%
%
%
%
%
%
%
%
% In general, how can the fundamental period be determined from arbitrary 
% integer M and N? (Remember that M can be greater than N.) Please comment 
% your in the space below.
%
%
%
%
%
%
%
% 2-3: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    
figure;
% code your plots here.





% How many unique plots did you obtain? Explain your observations. Please
% comment your answer in the space below.
%
%
%
%
%
%
% TASK 2-4: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


figure;
% code your plots here.







% What is the fundamental period of each signal? Please comment your answer
% in the space below.
%
%
%
%
%
%
%
%
%
% TASK 2-5: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% What conclusion can you draw from Task 2-4, above? Please comment your answer
% in the space below.
%
%
%
%
%
%
% Is the multiplication of periodic signals necessarily periodic? Explain
% your answer in the space below.
%
%
%
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 TASK 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TASK 3-1: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
n=-20:20;
unitstep = double(n>=0); % define a discrete heaviside (unit step) function
f = (0.8).^n.*unitstep;             
h = (0.5).^n.*unitstep;
g = conv(f,h);           % convolution between f and h
N = ceil(length(h)/2);

figure;
subplot(3,1,1); stem(n,f);            xlabel('time, n');  ylabel('f[n]');
subplot(3,1,2); stem(n,h);            xlabel('time, n');  ylabel('h[n]');
subplot(3,1,3); stem(n,g(N:end-N+1)); xlabel('time, n '); ylabel('g[n]');

% Comment on the value of N in the space below.
%
%
%
%
%
% TASK 3-2: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Use either of the following (depending on your MATLAB version). After
% listening to the audio file, press any key to continoue.

[f,Fs] = wavread('test_sound');                  
% [f,Fs] = audioread('test_sound','double');
sound(f,Fs); 
pause;

% TASK 3-3: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
h = 
g = 
% TASK 3-4: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
sound(g,Fs);
% TASK 3-5: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Comment on the difference(s) between f and g in the space below.
%
%
%
%
%
%
%
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% That is the end of CLAB1. Before leaving the lab, please send your matlab
% file to:
%         ehab.salahat@anu.edu.au
%         amin.movahed@anu.edu.au
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
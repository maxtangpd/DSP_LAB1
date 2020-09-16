%% read_sin_01.m
%
% View parameters, plot waveform, compute and display spectrum.
% Verify that the frequency of the sinusoid (as measured using the FFT)
% is the expected frequency. 

%%


clear
[x, Fs] = audioread('q8.wav');
clf
plot(x)
xlabel('Time (sample)')
zoom on




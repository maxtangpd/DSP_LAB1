%% Reading a wave file into Matlab
% Here we read a 16-bit wave file into Matlab.

%% Default data type (double)
% When we use the audioread function in Matlab to read a wave file, we get an array of floating-point (double) numbers

[x, fs] = audioread('sin_01_mono.wav');

whos x

%%

figure(1)
clf
plot(x, 'o-')
xlim([0 100])

%%
% Matlab normalizes the signal to the range [-1, 1]

x(1:10)

%% Native data type
% When we use the audioread with the 'native' option, we get an array of
% 16-bit signed integers here. (It depends on the wave file in general.) 

[x, fs] = audioread('sin_01_mono.wav', 'native');

whos x

%%
% In this case, the signal values are not normalized to [-1, 1]

figure(1)
clf
plot(x, 'o-')
xlim([0 100])

%%

x(1:10)

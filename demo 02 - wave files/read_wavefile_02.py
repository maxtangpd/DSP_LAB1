
import wave

# help(wave)

# web page: https://docs.python.org/3/library/wave.html

wf = wave.open('hello.wav')

num_channel = wf.getnchannels() 	# number of channels

fs = wf.getframerate() 	# frame rate (number of frames per second)

length_signal = wf.getnframes() 	# total number of frames (length of signal)

width = wf.getsampwidth() 	# number of bytes per sample

wf.close()

print(num_channel,fs,length_signal,width)

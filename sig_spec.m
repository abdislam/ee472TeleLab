function X = sig_spec(x)
% sig_spec, is just a name, you can use your own, determines the spectrum of x by calculating FFT
% X is the signal in frequency domain
% x is the signal
X = abs( fftshift( fft(x)/length(x) ));
end
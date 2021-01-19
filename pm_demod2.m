function y = pm_demod2(x,fm,fs)
% PM_DEMOD Phase Demodulation
% PM_DEMOD performs PM detection
% y = pm_demod(x)
% y is received wave
% x is PM wave
% fm is message frequency
% fs is sampling frequency

% PM Demodulation Using ideal differentiator & Envelope detector
Det    = differ(x);
xsq    = Det .* Det;
e      = (xsq - mean(xsq));
pkg load signal;
[b, a] = butter(2,2*fm/(fs/2));
y      = filter(b, a, e);

end
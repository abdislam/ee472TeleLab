function y = pm_demod(x)
% PM_DEMOD Phase Demodulation
% PM_DEMOD performs PM detection
% y = pm_demod(x)
% y is received wave
% x is PM wave

% PM Demodulation Using ideal differentiator & Envelope detector
Det = differ(x);
e  = abs( hilbert(Det));
y  = (e - mean(e));
end
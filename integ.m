function y = integ(x)
% INTEG Integration
% Integ evaluates the integraion of x using CUMSUM function
% Integration equals the summation muliplied by Delta 

y  = cumsum(x)/length(x);
end
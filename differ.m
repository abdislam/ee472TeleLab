function y = differ(x)
% DIFFER differentiation
% Differ evaluates the differentiation of x using DIFFER function
% differentiation equals the summation muliplied by Delta 
y  = diff(x);
y  = [y y(end)];
end
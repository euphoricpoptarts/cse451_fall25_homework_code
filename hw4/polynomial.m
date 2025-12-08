% evaluates a polynomial with coefficients given by c
% at the points given by x
function y = polynomial(c, x)
n = size(c, 1);
y = zeros(size(x));
for i=1:n
    y = y + c(i)*x.^(i - 1);
end
end
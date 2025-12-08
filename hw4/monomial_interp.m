% creates a function which interpolates the points given by (x,y)
function f = monomial_interp(x, y)
n = size(x, 1);
A = zeros(n);
% create system of equations
for i=1:n
    A(:,i) = x.^(i-1);
end
% solve for coefficients
c = A \ y;
% create an evaluatable polynomial function
f = @(x) polynomial(c, x); 
end
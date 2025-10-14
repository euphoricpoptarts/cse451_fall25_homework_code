n = 2

x = zeros(n,1);

% x = [1 + 1e-8, 1 + 1e-9]
for i = 1:n
  x(i) = 1 + 10^(-7 - i);
end

twopass(x)
onepass(x)

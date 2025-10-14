n = 2

x = zeros(n,1);

for i = 1:n
  x(i) = 1 + 10^(-7 - i);
end

disp(x.^2 - 1)
twopass(x)
onepass(x)

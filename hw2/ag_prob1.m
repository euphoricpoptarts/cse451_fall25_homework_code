
a = 0;
b = 2;

% anonymous function
f = @(x) sqrt(x) - 1.1;

count = 0;
tol = 2*1e-8;
% we assume that f(a)*f(b) < 0
while (b - a) > tol
  m = (a + b) / 2;
  fa = f(a);
  fm = f(m);
  if fa*fm > 0
    a = m;
  else
    b = m;
  endif
  count = count + 1;
end

disp(count);

m = (a + b) /2;

disp(abs(m - 1.21));

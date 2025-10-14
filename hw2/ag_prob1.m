
a = 0;
b = 2;

f = @(x) sqrt(x) - 1.1;

count = 0;
while (b - a) > 2*1e-8
  m = (a + b) / 2;
  fa = f(a);
  fb = f(b);
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

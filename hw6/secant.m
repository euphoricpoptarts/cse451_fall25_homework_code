function [root, errs] = secant(f, x1, x2, a)
  res = f(x2);
  errs = [];
  while abs(res) > 1e-9
    x3 = x2 - f(x2)*(x2 - x1)/(f(x2) - f(x1));
    x1 = x2;
    x2 = x3;
    res = f(x2);
    err = abs(x2 - a);
    errs(end + 1) = err;
  endwhile
  root = x2;
end

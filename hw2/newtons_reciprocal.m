function [y, iter] = newtons_reciprocal(x, b, tol)
  xl = inf;
  iter = 0;
  while abs(x - xl) > tol && iter < 100
    xl = x;
    x = xl*(2 - b*xl);
    iter = iter + 1;
  end
  y = x;
end

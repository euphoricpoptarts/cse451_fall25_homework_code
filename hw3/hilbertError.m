function [inf_res, inf_err, hcond] = hilbertError(n)
  h = hilb(n);
  hcond = cond(h);
  x = ones(n,1);
  b = h*x;
  xhat = h \ b;

  res = b - h*xhat;
  err = xhat - x;
  % infinity norm is equal to
  % max absolute value entry
  % you could also do norm(err, inf)
  inf_res = max(abs(res));
  inf_err = max(abs(err));
end

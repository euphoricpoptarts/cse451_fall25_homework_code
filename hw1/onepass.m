function alpha = onepass(x)
  m = mean(x);
  s = 0;
  n = length(x);
  for i = 1:n
    s = s + x(i)^2;
  end
  s = s - n*m^2;
  alpha = sqrt( s / (n - 1));
end

function alpha = twopass(x)
  m = mean(x);
  s = 0;
  n = length(x);
  for i = 1:n
    s = s + (x(i) - m)^2;
  end
  alpha = sqrt( s / (n - 1));
end

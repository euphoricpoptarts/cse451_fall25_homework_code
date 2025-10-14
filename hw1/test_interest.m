% anonymous function
f = @(x, n) (1 + (x/n))^n;

format long e
x = 0.05;
ground_truth = exp(x);
for i = 0:15
  n = 10^i;
  y = f(x, n);
  disp(abs(y - ground_truth));
end

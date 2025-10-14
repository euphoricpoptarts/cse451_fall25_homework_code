
% define each fixed point iteration as
% an anonymous function
g1 = @(x) (x^2 + 2)/3;

g2 = @(x) sqrt(3*x - 2);

g3 = @(x) 3 - (2 / x);

g4 = @(x) (x^2 - 2)/(2*x - 3);

y = [2.1, 2.1, 2.1, 2.1];
format shortE
% apply five iterations for each fixed point
for i = 1:5
  y = [g1(y(1)), g2(y(2)), g3(y(3)), g4(y(4))];
  z = y - 2;
  disp(z)
end

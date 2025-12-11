f = @(x) sin(x);
f_actual = 2;
err = inf;
tol = 1e-6;
n = 0;
evals = 0;
while err > tol
    n = n + 1;
    [y, evals] = composite_simpsons(f, 0, pi, n);
    err = abs(f_actual - y);
end
evals
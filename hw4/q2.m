% datapoints
x = [1; 2; 3; 4; 5;];
y = gamma(x);

% interpolant/spline functions
f1 = monomial_interp(x, y);
pp = spline(x, y);
f2 = @(x) ppval(pp, x);

% ground truth function
f3 = @(x) gamma(x);

% plot interpolant, spline, and ground truth
fplot(f1, [1 6]);
hold on
fplot(f2, [1 6]);
hold on
fplot(f3, [1 6]);
saveas(gcf, "q2_plot.pdf");

% plot error of interpolant and spline
err1 = @(x) abs(f3(x) - f1(x));
err2 = @(x) abs(f3(x) - f2(x));
clf
fplot(err1, [1 6]);
hold on
fplot(err2, [1 6]);
set(gca, 'YScale', 'log')
saveas(gcf, "q2_err.pdf");
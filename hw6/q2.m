a = -5;
f = @(x) sign(x - a)*sqrt(abs(x - a));

a1 = a - 200;
a2 = a + 100;
[root, errs] = secant(f, a1, a2, a);
x = 1:length(errs);
semilogy(x, errs);
xlabel("Iteration Counter");
ylabel("Error");
% all this BS to eliminate the huge margins around the saved figure
set(gcf, 'PaperPosition', [0 0 5 5]);
set(gcf, 'PaperSize', [5 5]);
saveas(gcf, 'hw6q3', 'pdf');

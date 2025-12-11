f = @(x) cos(x);
f_actual = 2*sin(1);
g = @(x) 1 ./ (1 + 100.*x.^2);
g_actual = 0.2 * atan(10);
h = @(x) sqrt(abs(x));
h_actual = 4 / 3;

tol = [1e-3,1e-6,1e-9];
format long
for i=1:length(tol)
    [y, mesh, evals] = quads(f, -1, 1, tol(i));
    fprintf("%d %d %d\n", y, evals, abs(y - f_actual));
    if i == 1
        hold on
        fplot(f, [-1,1]);
        plot(mesh, f(mesh), 'o', 'MarkerFaceColor', 'r');
        % only works on matlab r2020 and newer
        exportgraphics(gcf, "q2_f.pdf");
        close(gcf);
    end
end

for i=1:length(tol)
    [y, mesh, evals] = quads(g, -1, 1, tol(i));
    fprintf("%d %d %d\n", y, evals, abs(y - g_actual));
    if i == 1
        hold on
        fplot(g, [-1,1]);
        plot(mesh, g(mesh), 'o', 'MarkerFaceColor', 'r');
        % only works on matlab r2020 and newer
        exportgraphics(gcf, "q2_g.pdf");
        close(gcf);
    end
end

for i=1:length(tol)
    [y, mesh, evals] = quads(h, -1, 1, tol(i));
    fprintf("%d %d %d\n", y, evals, abs(y - h_actual));
    if i == 1
        hold on
        fplot(h, [-1,1]);
        plot(mesh, h(mesh), 'o', 'MarkerFaceColor', 'r');
        % only works on matlab r2020 and newer
        exportgraphics(gcf, "q2_h.pdf");
        close(gcf);
    end
end

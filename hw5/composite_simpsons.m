function [y, eval] = composite_simpsons(f, a, b, n)
h = (b - a) / (2*n);
y = f(a) + f(b);
eval = 2;
for i=1:n
    eval = eval + 1;
    % right-edge
    if i ~= n
        % each right-edge (except rightmost sub-interval)
        % is the left-edge of another sub-interval
        % so multiply by 2
        y = y + 2*f(a + 2*i*h);
        eval = eval + 1;
    end
    % midpoint
    y = y + 4*f(a + (2*i - 1)*h);
end
y = y*(h/3);
end
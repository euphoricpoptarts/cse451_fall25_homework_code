function [x] = naive_gauss(A, b)

n = size(A, 1);
A = [A b];

for i=1:n
    % zero-out column i below row i
    for j=i+1:n
        l = A(j, i) / A(i, i);
        % zero-out entry (j, i) of U
        A(j, :) = A(j,:) - l*A(i, :);
    end
end

x = A(:,n+1);
% backward substitution
for i=n:-1:1
    for j=i+1:n
        x(i) = x(i) - A(i,j)*x(j);
    end
    x(i) = x(i) / A(i,i);
end
end
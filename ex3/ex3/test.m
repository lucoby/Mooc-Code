n = size(X, 2);
X = [ones(m, 1) X];
i = 2;
all_theta = zeros(num_labels, n + 1);
initial_theta = zeros(n + 1, 1);
options = optimset('GradObj', 'on', 'MaxIter', 50);
[theta] = fmincg(@(t)(lrCostFunction(t, X, y == i, lambda)), initial_theta, options);
all_theta(i,:) = theta';
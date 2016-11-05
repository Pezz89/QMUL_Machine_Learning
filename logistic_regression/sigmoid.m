function output=sigmoid(z)
    % Implement sigmoid function as shown in the sigmoid function formula.
    output = 1.0 ./ (1.0 + exp(1) .^ -z);

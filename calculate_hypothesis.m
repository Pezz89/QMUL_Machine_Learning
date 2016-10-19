function hypothesis = calculate_hypothesis(X, theta, training_example)
    %CALCULATE_HYPOTHESIS This calculates the hypothesis for a given X,
    %theta and specified training example
    x0 = X(training_example, 1);
    x1 = X(training_example, 2);

    hypothesis = theta(1)*x0+theta(2)*x1;
end


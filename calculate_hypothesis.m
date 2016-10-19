function hypothesis = calculate_hypothesis(X, theta, training_example)
    %CALCULATE_HYPOTHESIS This calculates the hypothesis for a given X,
    %theta and specified training example
    x = X(training_example, 1:length(theta));

    hypothesis = sum(x.*theta);
    %hypothesis = theta(1)*x0+theta(2)*x1+theta(3)*x2;
end


function hypothesis = calculate_hypothesis(X, theta, training_example)
    %CALCULATE_HYPOTHESIS This calculates the hypothesis for a given X,
    %theta and specified training example
    x = X(training_example, 1:2);
    
    %hypothesis = sum(x.*theta);
    %
    hypothesis = theta(1)*x(1)+theta(2)*x(2)+theta(3)*x(2)^2+theta(4)*x(2)^3+theta(5)*x(2)^4+theta(6)*x(2)^5;
end


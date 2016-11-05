function result=calculate_hypothesis(X,theta,training_example)
    % Get the value for x at the training example index provided
    x = X(training_example, 1:length(theta));

    % Calcuate the Theta weighted sum of x
    hypothesis = sum(x.*theta);

    % Apply the sigmoid function to the result
    result=sigmoid(hypothesis);

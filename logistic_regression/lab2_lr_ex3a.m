
% this loads our data
[X,y] = load_data_ex1();

% now we want to normalise our data
[X,mean,std] = normalise_features(X);

% after normalising we add the bias
%X=[ones(size(X,1),1),X];

X=[ones(size(X,1),1),X,X(:,1).*X(:,2),X(:,1).^2,X(:,2).^2];
theta=ones(1,size(X,2));

% for question 7, modify the dataset X to have more features (in each row)
	% append to X(i),the following features:
	% here append x_2 * x_3 (remember that x_1 is the bias)

	% here append x_2 * x_2 (remember that x_1 is the bias)

	% here append x_3 * x_3 (remember that x_1 is the bias)

% initialise theta
alpha = 0.05;
iterations = 100;


[t,cost_array]=gradient_descent(X,y,theta,alpha,iterations);

display(['Error:',num2str(compute_cost(X,y,t))]);

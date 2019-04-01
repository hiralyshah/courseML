function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%



%input layer
a1 = [ones(m,1), X]; % add column of 1s for X0 to input X.

%hidden layer
z2 = sigmoid(a1 * Theta1'); % (5000x401)*(401x25) = 5000x25
% Add activation unit 0 (+1) for each training example.
a2 = [ones(m,1), z2] % 5000x26

%output layer
a3 = sigmoid(a2 * Theta2'); % (5000x26) * (26x10) = (5000x10)

[val,p] = max(a3,[],2);

% =========================================================================


end

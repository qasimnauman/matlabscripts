% defining matrices
A = [3 4 -1; 2 -3 2; 5 1 4];

B = [7; -5; 10];

% inverse using inv built in function
X1 = inv(A)*B;

display(X1);

% inverse using backslash
X2 = A\B;

display(X2);
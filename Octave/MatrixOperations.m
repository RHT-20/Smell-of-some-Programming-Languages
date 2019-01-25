% A is a 3x3 matrix
  A(2, 3)       % returns the element of 2nd row and 3rd column
  A(2 , : )      % every element along the 2nd row
  A( : , 3)      % every element along the 3rd column
  A(1:3, : )    % everything from 1st to 3rd row

-------------------------------------------------------------------  
  A(2 , : ) = [10 10 10]    % assign 2nd row
  A( : , 2) = [20; 20; 20]  % assign 2nd column

-------------------------------------------------------------------  
  A = [A; [40 40 40]]   % append a new row below
  A = [A, [30; 30; 30]] % append a new column vector to the right
  
% append two matrix
  C = [A B]   % A and B must have same number of rows
  C = [A; B]  % A and B must have same number of columns

-------------------------------------------------------------------  
% put all elements of A into a single column vector
  A(:)

-------------------------------------------------------------------  
% v is a vector containing i'th to j'th element(s) of matrix A (considering A as a vector)
% here, (1<=i<=j<=n*m) [A is a (n x m) matrix]
  v = A(i : j)

-------------------------------------------------------------------  
  A * B     % matrix multiplication
  A .* B    % element wise multiplication. A and B must have same # of rows/columns/dimension
  
% element wise power
  A .^ 2
  A .^ B    % A and B must have same # of rows/columns/dimension

  1 ./ A      % element wise inverse
  log(A)     % element wise log
  exp(A)    % element wise base e exponent
  abs(A)    % element wise absolute value
  -A           % -1 * A
  A + 1      % element wise increment by 1
  A'            % transpose

-------------------------------------------------------------------  
% max function
  max(A)                            % column wise max
  [value, index] = max(A)   % max value in each column and index of this column
  max(A, C)                        % element wise max of two matrix
  max(A, [], 1)                    % column wise max
  max(A, [], 2)                    % row wise max
  max(max(A))                   % max of the entire matrix
  % or
  max(A(:))

% sum() function
  sum(A)            % column wise sum
  sum(A, 1)        % column wise sum
  sum(A, 2)        % row wise sum
  sum(sum(A))   % sum of the entire matrix
  % or
  sum(A(:))

% prod() function do product and it's action's are same as sum function.

-------------------------------------------------------------------    
% ceil() and floor()
  floor(A)    % return floor value of each element
  ceil(A)      % return ceiling value of each element
  round(A)  % return round value of each element

-------------------------------------------------------------------    
% flip a matrix vertically. same type of other flip function exists
  flipud(A)

-------------------------------------------------------------------    
% inverse
  inv(A)    % if non invertible matrix return error
  pinv(A)  % pseudo inverse

-------------------------------------------------------------------    
% comparison
  A < 3                     % element wise comparison
  find(A < 3)             % returns indices by treating A as a vector
  [r, c] = find(A < 3)  % row and column index
  
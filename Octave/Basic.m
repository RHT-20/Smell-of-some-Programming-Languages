% semicolon at the end of a statement suppress output

% creating a 4x3 matrix
  A = [1, 2, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12]
  % or
  A = [1 2 3; 4 5 6; 7 8 9; 10 11 12]

% creating a 2x3 one matrix
  ones(2, 3)

% creating a 2x3 zero matrix
  zeros(2, 3)

% creating a 3x3 identity matrix
  eye(3)

% random 3x3 matrix
  rand(3, 3)

% random 3x3 matrix from gaussian distribution
  randn(3,3)

% return a (m x m) matrix whose sum along row/column/diagonal is same
% m >= 3, elements are from the range [1 to m^2]
  magic(m)

-------------------------------------------------------------------
% creating a vector
  v = [1 2 3]   % row vector
  v = [1; 2; 3] % column vector

% creating a vector from 1 -> 2 with diff = 0.1
  v = 1 : 0.1 : 2

% creating a vector from 1 -> 5 with diff = 1
  v = 1 : 5

-------------------------------------------------------------------
% dimension of matrix or vector
  size(A)          % dimension of matrix
  size(A, 1)      % size of first dimension
  rows(A)         % returns number of rows
  size(A, 2)      % size of second dimension
  columns(A)   % returns number of columns
  size(v)           % dimension of vector

% length of matrix or vector. size of the longest dimension
  length(v)
  length(A) % for a n x m matrix it returns max(n,m)

-------------------------------------------------------------------
% randomly permute the values from 1 to 5
  randperm(5)

-------------------------------------------------------------------
% data type
  format long
  pi
  format short
  pi

-------------------------------------------------------------------
% display function
  str = "hello";
  disp(str);
  disp(sprintf("Pi = %0.4f\n", pi));

-------------------------------------------------------------------
% help
  help eye  % in place of eye it can be anything

% current working directory
  pwd

% current variables in session
  who

% current variables with details
  whos

% addpath
  addpath('C:\Users\Asus\Desktop')
  
-------------------------------------------------------------------
% delete variable x
  clear x

% delete all the variables
  clear

-------------------------------------------------------------------
% load file a.txt
  load('a.txt')

% save matrix A in file a.txt
  save a.txt A

% save matrix A in file a.txt as text (ASCII)
  save a.txt A -ascii

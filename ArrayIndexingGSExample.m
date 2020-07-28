%% Array Indexing
% Every variable in MATLAB(R) is an array that can hold many numbers. When
% you want to access selected elements of an array, use indexing.
%
% For example, consider the 4-by-4 magic square |A|:

% Copyright 2015 The MathWorks, Inc.

A = magic(4)

%%
% There are two ways to refer to a particular element in an array. The most
% common way is to specify row and column subscripts, such as
A(4,2)

%%
% Less common, but sometimes useful, is to use a single subscript that
% traverses down each column in order:
A(8)

%%
% Using a single subscript to refer to a particular element in an array is
% called _linear indexing_.
%
% If you try to refer to elements outside an array on the right side of an
% assignment statement, MATLAB throws an error.
%%
% 
%   test = A(4,5)
% 
% |Index exceeds matrix dimensions.|
%%
% However, on the left side of an assignment statement, you can specify
% elements outside the current dimensions. The size of the array increases
% to accommodate the newcomers.
A(4,5) = 17

%%
% To refer to multiple elements of an array, use the colon operator, which
% allows you to specify a range of the form |start:end|. For example, list
% the elements in the first three rows and the second column of |A|:
A(1:3,2)

%%
% The colon alone, without start or end values, specifies all of the
% elements in that dimension. For example, select all the columns in the
% third row of |A|:
A(3,:)

%%
% The colon operator also allows you to create an equally spaced vector of
% values using the more general form |start:step:end|.
B = 0:10:100

%%
% If you omit the middle step, as in |start:end|, MATLAB uses the default
% step value of |1|.

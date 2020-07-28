%% Character Strings
% A _character string_ is a sequence of any number of characters enclosed 
% in single quotes. You can assign a string to a variable.

% Copyright 2015 The MathWorks, Inc.

myText = 'Hello, world';
%%
% If the text includes a single quote, use two single quotes within the
% definition.
otherText = 'You''re right'
%%
% |myText| and |otherText| are arrays, like all MATLAB(R) variables. Their
% _class_ or data type is |char|, which is short for _character_.
whos myText
%%
% You can concatenate strings with square brackets, just as you concatenate
% numeric arrays.
longText = [myText,' - ',otherText]
%%
% To convert numeric values to strings, use functions, such as |num2str| or
% |int2str|.
f = 71;
c = (f-32)/1.8;
tempText = ['Temperature is ',num2str(c),'C']
%
% Copyright 2021 TU Wien.
% Institute of Computer Graphics and Algorithms.
%

function [result] = evc_white_balance(input, white)
%evc_white_balance performs white balancing manually.

%   INPUT
%   input       ... image
%   white       ... a color (as RGB vector) that should become the new white

%   OUTPUT
%   result      ... result after white balance

% TODO: perform white balancing using the 'white' variable
% HINT: Make sure the program does not crash if 'white' is zero!
% NOTE: pixels brighter than 'white' will have values > 1.
%       This requires a normalization which will be performed
%       during the histogram clipping.
% NOTE: The following line can be removed. It prevents the framework
%       from crashing.

white(white <= 0) = realmin;

result = input .* (white^-1)

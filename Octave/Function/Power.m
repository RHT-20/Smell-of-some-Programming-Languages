% here, y can be a single value or a vector or a matrix
function y = Power(x)
    y = x ^ 2;
end

% or we can return more variables
function [y1, y2] = Power(x)
    y1 = x ^ 2;
    y2 = x ^ 3;
end

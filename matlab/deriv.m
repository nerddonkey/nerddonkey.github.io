function [ dfn ] = deriv( fn, delta )
%DERIV returns an approximation to the derivative of fn

% compute the incremental slope between the elements of fn; 'help diff'
dfn=diff(fn)/delta;

% pad dfn so that it is the same length as fn
dfn=[dfn, dfn(end)];
end

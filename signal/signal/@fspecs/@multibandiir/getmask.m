function [F, A] = getmask(this)
%GETMASK   Get the mask.

%   Author(s): V. Pellissier
%   Copyright 2005 The MathWorks, Inc.
%   $Revision: 1.1.6.2 $  $Date: 2008/05/31 23:27:14 $

p = propstoadd(this);
% Remove NormalizedFrequency, Fs, NumOrder, DenOrder and Nbands
p([1 2 3 4 5]) = [];

F = [];
A = [];
for i=1:2:length(p),
    F = [F this.(p{i})];
    A = [A this.(p{i+1})];
end

% [EOF]

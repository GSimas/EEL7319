% -*- texinfo -*-
% @deftypefn {Function File} {[@var{y1}, @var{y2}] =} function_name (@var{x1}, @var{x1})
% Takes the vector @var{x1} and ...
% Returns @var{y1} containing ...
%
% Example
% @example
% [y1, y2] = function_name (14, 15)
% y1 = 
%   1 + 0.5i
%   2 + 1.5i
% y2 = bla
% @end example
%
% @end deftypefn

% Script written with Octave 3.2.4
% Copyright 2010 by ....
% Published under GNU General Public License (GPL V2). No warranty at all.

function [y1, y2] = function_name(x1, x2)

  if (nargin < 2)
    error("Too few input parameters.")
    return
  endif

  if (nargout > 2)
    error("Too many output parameters.")
    return
  endif

  [volt, dep] = loadQucsVariable("actest.dat", "volt.v");
  freq = loadQucsVariable("actest.dat", dep);
  freq = freq / 1e9;
  ok = saveQucsVariable("moddata.dat", volt, freq);
  if (~ok)
    disp("Cannot save dataset.");
  endif

endfunction

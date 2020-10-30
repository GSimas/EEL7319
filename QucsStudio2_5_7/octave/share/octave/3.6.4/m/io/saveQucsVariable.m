% Script written with Octave 3.2.4
% Copyright 2010 by Michael Margraf (michael.margraf@alumni.tu-berlin.de)
% Published under GNU General Public License (GPL V2). No warranty at all.

% -*- texinfo -*-
% @deftypefn {Function File} {@var{ok} =} saveQucsVariable (@var{filename}, @var{var}, @var{dep})
% Saves the vector @var{var} and its dependency @var{dep}
% into the Qucs dataset file with name @var{filename}.
% Returns 'true' if successful.
%
% Example
% @example
% ok = saveQucsVariable ("octdata.dat", y, x)
% ok = 1
% @end example
%
% @end deftypefn

function ok = saveQucsVariable(filename, var, dep)
    ok = false;

    if nargin < 3
        error("Too few input parameters.")
        return
    endif

    if length(var) ~= length(dep)
        error("Variables must have the same size.")
        return
    endif

    [m, n] = size(var);
    if (m > 1) && (n > 1)
        error("Cannot save a matrix.")
        return
    endif

    fid = fopen(filename, "wb");
    if fid < 0
        error("Cannot create data file.")
        return
    endif

    % determine names of variables
    varName = inputname(2);
    if isvarname(varName) == false
        varName = "var";
    endif
    depName = inputname(3);
    if isvarname(depName) == false
        depName = "dep";
    endif

    % write prologue
    fputs(fid, "QucsData"); % file ID
    fwrite(fid, uint32(0x02040000), "int32", 0, "ieee-le"); % version
    fwrite(fid, uint32(19+2*length(depName)+length(varName)), "int32", 0, "ieee-le"); % header size

    % write header
    fwrite(fid, uint32(5), "int32", 0, "ieee-le"); % type of variable
    fwrite(fid, uint32(length(var)), "int32", 0, "ieee-le"); % size of variable
    fputs(fid, depName);
    fwrite(fid, uint8(0), "int8"); % string termination

    fwrite(fid, uint32(3), "int32", 0, "ieee-le"); % type of variable
    fwrite(fid, uint32(length(var)), "int32", 0, "ieee-le"); % size of variable
    fputs(fid, varName);
    fwrite(fid, uint8(0), "int8"); % string termination
    fputs(fid, depName);
    fwrite(fid, uint8(0), "int8"); % string termination

    % write data
    fwrite(fid, dep, "double", 0, "ieee-le"); % data of dependency
    if m == 1
      cvar = [real(var); imag(var)];
    else
      cvar = [real(var).'; imag(var).'];
    endif
    fwrite(fid, cvar, "double", 0, "ieee-le"); % data of variable

    fclose(fid);
    ok = true;
endfunction

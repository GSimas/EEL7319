% [data] = loadQucsDataset (filename)
% Reads the QucsStudio dataset file 'filename' into 'data' which is a
% structure containing the fields 'name', 'depName', 'count', 'type', 'data'.
%
% Example:
% [d] = loadQucsDataset ("actest.dat");
% d.name = 
%   ans = frequency
%   ans = output.v
%
% Copyright 2010 by Michael Margraf
% Published under GNU General Public License (GPL V2). No warranty at all.
%

function [dataset] = loadQucsDataset(filename)

  pos = 0;
  dataset = [];

  fid = fopen(filename, "rb");
  if fid < 0
    error("Cannot open data file.")
    return
  end

  if strcmp(fscanf(fid, "%8s", "C"), "QucsData") == 0
    error("File is not a Qucs data file.")
    fclose(fid);
    return
  end

  version = fread(fid, 1, "int32", 0, "ieee-le");
  size = fread(fid, 1, "int32", 0, "ieee-le");

  % load header containing a list of all variables in the file
  header = fread(fid, size, "uchar");

  type = 0;
  count = 0;
  index = 0;
  % search for the variable
  while index+9 <= size
    type  = header(index+1) + 256*(header(index+2) + 256*(header(index+3) + 256*header(index+4)));
    count = header(index+5) + 256*(header(index+6) + 256*(header(index+7) + 256*header(index+8)));

    name = "";
    dependency = "";
    index = index + 9;
    while header(index) > 0
      name = [name char(header(index))];
      index = index + 1;
    end
    if bitget(type, 2) == 1  % is dependent variable?
        index = index + 1;
        while header(index) > 0
            dependency = [dependency char(header(index))];
            index = index + 1;
        end
    end

    if bitget(type, 3) == 0  % complex-valued numbers?
        data = fread(fid, 2*count, "double", 0, "ieee-le");
        data = data(1:2:2*count-1) + j*data(2:2:2*count);
    else
        data = fread(fid, count, "double", 0, "ieee-le");
    end

    pos = pos + 1;
    dataset(pos).name = name;
    dataset(pos).depName = dependency;
    dataset(pos).size = count;
    dataset(pos).type = type;
    dataset(pos).data = data;
  end

  fclose(fid);
endfunction

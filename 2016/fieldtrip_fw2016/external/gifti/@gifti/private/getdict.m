function d = getdict
% Dictionary of GIfTI/NIfTI stuff
%__________________________________________________________________________
% Copyright (C) 2008 Wellcome Trust Centre for Neuroimaging

% Guillaume Flandin
% $Id: getdict.m 3261 2011-03-31 15:06:56Z roboos $

persistent dict;
if ~isempty(dict)
    d = dict;
    return;
end

table = {...
    'NIFTI_TYPE_UINT8',   'uint8',   '%d', @uint8, 'uint8'
    'NIFTI_TYPE_INT32',   'int32',   '%d', @int32, 'int32' 
    'NIFTI_TYPE_FLOAT32', 'float32', '%f', @single, 'single'};

for i=1:size(table,1)
    dict.(table{i,1}) = cell2struct({table{i,2:end}},...
        {'class', 'format', 'conv', 'cast'}, 2);
end

d = dict;
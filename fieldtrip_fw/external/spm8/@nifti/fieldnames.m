function t = fieldnames(obj)
% Fieldnames of a NIFTI-1 object
% _______________________________________________________________________
% Copyright (C) 2008 Wellcome Trust Centre for Neuroimaging

%
% $Id: fieldnames.m 2781 2011-02-03 10:48:53Z roboos $


if isfield(obj.hdr,'magic')
    t = {...
        'dat'
        'mat'
        'mat_intent'
        'mat0'
        'mat0_intent'
        'intent'
        'diminfo'
        'timing'
        'descrip'
        'cal'
        'aux_file'
    };
else
    error('This should not happen.');
end;

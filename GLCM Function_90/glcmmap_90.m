function [countt,probs] = glcmmap_90(window_details)
offset = [-1 0];
bitnumber = 64;

[glcm_matrix,SI] = graycomatrix(window_details,'Offset',offset,'NumLevels',bitnumber,'GrayLimits',[0 bitnumber],'Symmetric', true);
glcm_corrected = error_contrast_adjustment(glcm_matrix);

avg = sum(sum(glcm_corrected));
if avg ~= 0
    glcm_norm = glcm_corrected ./ sum(sum(glcm_corrected));
else
    glcm_norm = 0;
end

countt = glcm_corrected;

probs = glcm_norm;
end


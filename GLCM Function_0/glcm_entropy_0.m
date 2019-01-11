function [stat_value] = glcm_entropy_0(window_details)

offset = [0 1];
bitnumber = 64;

[glcm_matrix,SI] = graycomatrix(window_details,'Offset',offset,'NumLevels',bitnumber,'GrayLimits',[0 bitnumber],'Symmetric', true);


glcm_norm = glcm_matrix ./ sum(sum(glcm_matrix));

glcm_entropy(glcm_norm > 0) = glcm_norm(glcm_norm > 0) .* (-log(glcm_norm(glcm_norm > 0)));
glcm_entropy(glcm_norm == 0) = 0;
stat_value = sum(sum(glcm_entropy));

end



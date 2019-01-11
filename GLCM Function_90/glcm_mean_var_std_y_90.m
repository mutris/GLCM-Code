function [mean,var,std] = glcm_mean_var_std_y_90(window_details)

offset = [-1 0];
bitnumber = 64;

[glcm_matrix,SI] = graycomatrix(window_details,'Offset',offset,'NumLevels',bitnumber,'GrayLimits',[0 bitnumber],'Symmetric', true);

glcm_norm = glcm_matrix ./ sum(sum(glcm_matrix));
j = 1:length(glcm_matrix);
glcm_mean_y = glcm_norm .* j;
mean = sum(sum(glcm_mean_y));

glcm_var_y = glcm_norm .* ((j - mean).^2);
var = sum(sum(glcm_var_y));
std = sqrt(var);

end

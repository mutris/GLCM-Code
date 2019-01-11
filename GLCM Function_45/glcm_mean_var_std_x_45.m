function [mean,var,std] = glcm_mean_var_std_x_45(window_details)

offset = [-1 1];
bitnumber = 64;

[glcm_matrix,SI] = graycomatrix(window_details,'Offset',offset,'NumLevels',bitnumber,'GrayLimits',[0 bitnumber],'Symmetric', true);
glcm_norm = glcm_matrix ./ sum(sum(glcm_matrix));
i = 1:length(glcm_matrix);
glcm_mean_x = glcm_norm .* i;
mean = sum(sum(glcm_mean_x));

glcm_var_x = glcm_norm .* ((i - mean).^2);
var = sum(sum(glcm_var_x));
std = sqrt(var);

end

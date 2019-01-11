function [correl] = glcm_cor_135(window_details)

offset = [-1 -1];
bitnumber = 64;

[glcm_matrix,SI] = graycomatrix(window_details,'Offset',offset,'NumLevels',bitnumber,'GrayLimits',[0 bitnumber],'Symmetric', true);
glcm_norm = glcm_matrix ./ sum(sum(glcm_matrix));

i = 0:length(glcm_matrix)-1;
glcm_mean_x = glcm_norm .* i;
mean_x = sum(sum(glcm_mean_x));

glcm_var_x = glcm_norm .* ((i - mean_x).^2);
var_x = sum(sum(glcm_var_x));

j = 0:length(glcm_matrix)-1;
j = transpose(j);
glcm_mean_y = glcm_norm .* j;
mean_y = sum(sum(glcm_mean_y));

glcm_var_y = glcm_norm .* ((j - mean_y).^2);
var_y = sum(sum(glcm_var_y));

[m,n] = meshgrid(1:length(glcm_matrix),1:length(glcm_matrix));

glcm_correl = glcm_norm .* ((((m-1)-mean_x).*((n-1)-mean_y))/sqrt(var_x * var_y));
  
correl = sum(sum(glcm_correl));

end

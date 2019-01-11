function [stat_value] = glcm_mean_x_45(window_details)

offset = [-1 1];
bitnumber = 64;

[glcm_matrix,SI] = graycomatrix(window_details,'Offset',offset,'NumLevels',bitnumber,'GrayLimits',[0 bitnumber],'Symmetric', true);

glcm_norm = glcm_matrix ./ sum(sum(glcm_matrix));

i = 0:bitnumber-1;
glcm_mean_x = glcm_norm .* i;

stat_value = sum(sum(glcm_mean_x));

end

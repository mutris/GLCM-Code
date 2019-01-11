function [stat_value] = glcm_mean_y_0(window_details)

offset = [0 1];
bitnumber = 64;

[glcm_matrix,SI] = graycomatrix(window_details,'Offset',offset,'NumLevels',bitnumber,'GrayLimits',[0 bitnumber],'Symmetric', true);

glcm_norm = glcm_matrix ./ sum(sum(glcm_matrix));
j = 0:bitnumber-1;
j = transpose(j);
glcm_mean_y = glcm_norm .* j;
        
stat_value = sum(sum(glcm_mean_y));

end

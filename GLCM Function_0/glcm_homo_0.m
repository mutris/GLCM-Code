function [stat_value] = glcm_homo_0(window_details)

offset = [0 1];
bitnumber = 64;

[glcm_matrix,SI] = graycomatrix(window_details,'Offset',offset,'NumLevels',bitnumber,'GrayLimits',[0 bitnumber],'Symmetric', true);

glcm_norm = glcm_matrix ./ sum(sum(glcm_matrix));

[i,j] = meshgrid(1:length(glcm_matrix),1:length(glcm_matrix));
glcm_homo = glcm_norm ./ ((1 + (i-j).^2));

stat_value = sum(sum(glcm_homo));

end



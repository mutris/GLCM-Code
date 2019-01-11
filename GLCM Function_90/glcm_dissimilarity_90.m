function [stat_value] = glcm_dissimilarity_90(window_details)

offset = [-1 0];
bitnumber = 64;

[glcm_matrix,SI] = graycomatrix(window_details,'Offset',offset,'NumLevels',bitnumber,'GrayLimits',[0 bitnumber],'Symmetric', true);

glcm_norm = glcm_matrix ./ sum(sum(glcm_matrix));

[i,j] = meshgrid(1:length(glcm_matrix),1:length(glcm_matrix));
glcm_dissimilarity = glcm_norm .* abs(i-j);

stat_value = sum(sum(glcm_dissimilarity));

end


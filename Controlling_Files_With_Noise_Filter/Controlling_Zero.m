%% For Yibing High - Bentheimer Sandstone - 6.84 um

clearvars im_resize num_img im ct_block
load yh_after_contrast.mat
num_img = 40;

con_yh_0 = zeros(num_img,1);
dis_yh_0 = zeros(num_img,1);
homo_yh_0 = zeros(num_img,1);
asm_yh_0 = zeros(num_img,1);
entropy_yh_0 = zeros(num_img,1);
energy_yh_0 = zeros(num_img,1);
mean_x_yh_0 = zeros(num_img,1);
mean_y_yh_0 = zeros(num_img,1);
cor_yh_0 = zeros(num_img,1);
glcm_map_yh_0 = zeros(64,64,num_img);
glcm_prob_yh_0 = zeros(64,64,num_img);

for x = 1:40
    im = image_store_yh_after(:,:,x);
    [glcm_map_yh_0(:,:,x),glcm_prob_yh_0(:,:,x)] = glcmmap_0(im);
    con_yh_0(x) = glcm_contrast_0(im);
    dis_yh_0(x) = glcm_dissimilarity_0(im);
    homo_yh_0(x) = glcm_homo_0(im);
    asm_yh_0(x) = glcm_asm_0(im);
    entropy_yh_0(x) = glcm_entropy_0(im);
    energy_yh_0(x) = glcm_energy_0(im);
    mean_x_yh_0(x) = glcm_mean_x_0(im);
    mean_y_yh_0(x) = glcm_mean_y_0(im);
    cor_yh_0(x) = glcm_cor_0(im);
end


%% For Glass Beads - 10 um

clearvars im_resize num_img im ct_b ct_block_i type_z type_y ct_block change_cast
load gb_after_contrast.mat
num_img = 40;

con_gb_0 = zeros(num_img,1);
dis_gb_0 = zeros(num_img,1);
homo_gb_0 = zeros(num_img,1);
asm_gb_0 = zeros(num_img,1);
entropy_gb_0 = zeros(num_img,1);
energy_gb_0 = zeros(num_img,1);
mean_x_gb_0 = zeros(num_img,1);
mean_y_gb_0 = zeros(num_img,1);
cor_gb_0 = zeros(num_img,1);
glcm_map_gb_0 = zeros(64,64,num_img);
glcm_prob_gb_0 = zeros(64,64,num_img);

for x = 1:40
    im = image_store_gb_after(:,:,x);
    [glcm_map_gb_0(:,:,x),glcm_prob_gb_0(:,:,x)] = glcmmap_0(im);
    con_gb_0(x) = glcm_contrast_0(im);
    dis_gb_0(x) = glcm_dissimilarity_0(im);
    homo_gb_0(x) = glcm_homo_0(im);
    asm_gb_0(x) = glcm_asm_0(im);
    entropy_gb_0(x) = glcm_entropy_0(im);
    energy_gb_0(x) = glcm_energy_0(im);
    mean_x_gb_0(x) = glcm_mean_x_0(im);
    mean_y_gb_0(x) = glcm_mean_y_0(im);
    cor_gb_0(x) = glcm_cor_0(im);
end


%% For Simon Sandstone - 3.016 um

clearvars im_resize num_img im ct_block
load ss_after_contrast.mat
num_img = 40;

con_ss_0 = zeros(num_img,1);
dis_ss_0 = zeros(num_img,1);
homo_ss_0 = zeros(num_img,1);
asm_ss_0 = zeros(num_img,1);
entropy_ss_0 = zeros(num_img,1);
energy_ss_0 = zeros(num_img,1);
mean_x_ss_0 = zeros(num_img,1);
mean_y_ss_0 = zeros(num_img,1);
cor_ss_0 = zeros(num_img,1);
glcm_map_ss_0 = zeros(64,64,num_img);
glcm_prob_ss_0 = zeros(64,64,num_img);

for x = 1:40
    im = image_store_ss_after(:,:,x);
    [glcm_map_ss_0(:,:,x),glcm_prob_ss_0(:,:,x)] = glcmmap_0(im);
    con_ss_0(x) = glcm_contrast_0(im);
    dis_ss_0(x) = glcm_dissimilarity_0(im);
    homo_ss_0(x) = glcm_homo_0(im);
    asm_ss_0(x) = glcm_asm_0(im);
    entropy_ss_0(x) = glcm_entropy_0(im);
    energy_ss_0(x) = glcm_energy_0(im);
    mean_x_ss_0(x) = glcm_mean_x_0(im);
    mean_y_ss_0(x) = glcm_mean_y_0(im);
    cor_ss_0(x) = glcm_cor_0(im);
end

%% For Navajo Sandstone - 3.02 um

clearvars im_resize num_img im ct_block
load nv_after_contrast.mat
num_img = 40;

con_nv_0 = zeros(num_img,1);
dis_nv_0 = zeros(num_img,1);
homo_nv_0 = zeros(num_img,1);
asm_nv_0 = zeros(num_img,1);
entropy_nv_0 = zeros(num_img,1);
energy_nv_0 = zeros(num_img,1);
mean_x_nv_0 = zeros(num_img,1);
mean_y_nv_0 = zeros(num_img,1);
cor_nv_0 = zeros(num_img,1);
glcm_map_nv_0 = zeros(64,64,num_img);
glcm_prob_nv_0 = zeros(64,64,num_img);

for x = 1:40
    im = image_store_nv_after(:,:,x);
    [glcm_map_nv_0(:,:,x),glcm_prob_nv_0(:,:,x)] = glcmmap_0(im);
    con_nv_0(x) = glcm_contrast_0(im);
    dis_nv_0(x) = glcm_dissimilarity_0(im);
    homo_nv_0(x) = glcm_homo_0(im);
    asm_nv_0(x) = glcm_asm_0(im);
    entropy_nv_0(x) = glcm_entropy_0(im);
    energy_nv_0(x) = glcm_energy_0(im);
    mean_x_nv_0(x) = glcm_mean_x_0(im);
    mean_y_nv_0(x) = glcm_mean_y_0(im);
    cor_nv_0(x) = glcm_cor_0(im);
end
%% For Multi-mineral Sandstone - 2.3 um

clearvars im_resize num_img im ct_block
load mm_after_contrast.mat
num_img = 40;

con_mm_0 = zeros(num_img,1);
dis_mm_0 = zeros(num_img,1);
homo_mm_0 = zeros(num_img,1);
asm_mm_0 = zeros(num_img,1);
entropy_mm_0 = zeros(num_img,1);
energy_mm_0 = zeros(num_img,1);
mean_x_mm_0 = zeros(num_img,1);
mean_y_mm_0 = zeros(num_img,1);
cor_mm_0 = zeros(num_img,1);
glcm_map_mm_0 = zeros(64,64,num_img);
glcm_prob_mm_0 = zeros(64,64,num_img);

for x = 1:40
    im = image_store_mm_after(:,:,x);
    [glcm_map_mm_0(:,:,x),glcm_prob_mm_0(:,:,x)] = glcmmap_0(im);
    con_mm_0(x) = glcm_contrast_0(im);
    dis_mm_0(x) = glcm_dissimilarity_0(im);
    homo_mm_0(x) = glcm_homo_0(im);
    asm_mm_0(x) = glcm_asm_0(im);
    entropy_mm_0(x) = glcm_entropy_0(im);
    energy_mm_0(x) = glcm_energy_0(im);
    mean_x_mm_0(x) = glcm_mean_x_0(im);
    mean_y_mm_0(x) = glcm_mean_y_0(im);
    cor_mm_0(x) = glcm_cor_0(im);
end

%% For Berea Sandstone - 5.4 um

clearvars im_resize num_img im ct_block
load sfh_after_contrast.mat
num_img = 40;

con_sfh_0 = zeros(num_img,1);
dis_sfh_0 = zeros(num_img,1);
homo_sfh_0 = zeros(num_img,1);
asm_sfh_0 = zeros(num_img,1);
entropy_sfh_0 = zeros(num_img,1);
energy_sfh_0 = zeros(num_img,1);
mean_x_sfh_0 = zeros(num_img,1);
mean_y_sfh_0 = zeros(num_img,1);
cor_sfh_0 = zeros(num_img,1);
glcm_map_sfh_0 = zeros(64,64,num_img);
glcm_prob_sfh_0 = zeros(64,64,num_img);

for x = 1:40
    im = image_store_sfh_after(:,:,x);
    [glcm_map_sfh_0(:,:,x),glcm_prob_sfh_0(:,:,x)] = glcmmap_0(im);
    con_sfh_0(x) = glcm_contrast_0(im);
    dis_sfh_0(x) = glcm_dissimilarity_0(im);
    homo_sfh_0(x) = glcm_homo_0(im);
    asm_sfh_0(x) = glcm_asm_0(im);
    entropy_sfh_0(x) = glcm_entropy_0(im);
    energy_sfh_0(x) = glcm_energy_0(im);
    mean_x_sfh_0(x) = glcm_mean_x_0(im);
    mean_y_sfh_0(x) = glcm_mean_y_0(im);
    cor_sfh_0(x) = glcm_cor_0(im);
end
%%
disp('job done - 0 degrees')


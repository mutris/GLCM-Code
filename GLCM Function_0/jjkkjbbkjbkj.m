clearvars im_resize num_img im ct_block
clc
ct_block = ncread('sand2_SL.nc','tomo');
im_resize = imresize(ct_block,0.57);
num_img = 40;

con_sand_yibing_low = zeros(num_img,1);
dis_sand_yibing_low = zeros(num_img,1);
homo_sand_yibing_low = zeros(num_img,1);
asm_sand_yibing_low = zeros(num_img,1);
entropy_sand_yibing_low = zeros(num_img,1);
energy_sand_yibing_low = zeros(num_img,1);
mean_x_sand_yibing_low = zeros(num_img,1);
cor_sand_yibing_low = zeros(num_img,1);

for x = 1:40
    im = imcrop(im_resize(:,:,x),[401.5 405.5 499 499]); 
    run main_run_sand2_SL
    con_sand_yibing_low(x) = glcm_contrast(new_im);
    dis_sand_yibing_low(x) = glcm_dissimilarity(new_im);
    homo_sand_yibing_low(x) = glcm_homo(new_im);
    asm_sand_yibing_low(x) = glcm_asm(new_im);
    entropy_sand_yibing_low(x) = glcm_entropy(new_im);
    energy_sand_yibing_low(x) = glcm_energy(new_im);
    mean_x_sand_yibing_low(x) = glcm_mean_x(new_im);
    cor_sand_yibing_low(x) = glcm_cor(new_im);
end
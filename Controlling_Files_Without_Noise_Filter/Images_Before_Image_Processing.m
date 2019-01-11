%% For Yibing High - Bentheimer Sandstone - 6.84 um

clearvars im_resize num_img im ct_block
clc
ct_block = ncread('YH.nc','tomo');
im_resize = imresize(ct_block,0.98);
num_img = 40;
image_store_yh_before = zeros(400,400,num_img);

for x = 1:40
    im = imcrop(im_resize(:,:,x),[527.5 503.5 399 399]); 
    image_store_yh_before(:,:,x) = im; 
end


%% For Glass Beads - 10 um

clearvars im_resize num_img im ct_b ct_block_i type_z type_y ct_block change_cast
clc
ct_b = ncread('glass_beads.nc','tomo');
ct_block = ct_b(:,:,1:40);

for type_z = 1:40
    x = ct_block(:,:,type_z);
    for type_y = 1:2048
        change_cast = typecast(x(:,type_y),'uint8'); 
        ct_block_i(:,type_y, type_z) = change_cast;
    end
end 

im_resize = imresize(ct_block_i,1.43);
num_img = 40;
image_store_gb_before = zeros(400,400,num_img);

for x = 1:40
    im = imcrop(im_resize(:,:,x),[969.5 817.5 399 399]);%[673.5 1029.5 399 399]);%[933.5 813.5 399 399]);%[1257.5 1397.5 399 399]);%[969.5 817.5 399 399]); 
    image_store_gb_before(:,:,x) = im; 
end

%% For Simon Sandstone - 3.016 um

clearvars im_resize num_img im ct_block
clc
ct_block = ncread('block00000025_new.nc','tomo');
im_resize = imresize(ct_block,0.43);
num_img = 40;
image_store_ss_before = zeros(400,400,num_img);

for x = 1:40
    im = imcrop(im_resize(:,:,x),[304.5 451.5 399 399]); 
    image_store_ss_before(:,:,x) = im;  
end

%% For Navajo Sandstone - 3.026 um

clearvars im_resize num_img im ct_block
clc
ct_block = ncread('block00000070.nc','tomo');
im_resize = imresize(ct_block,0.43);
num_img = 40;
image_store_nv_before = zeros(400,400,num_img);

for x = 1:40
    im = imcrop(im_resize(:,:,x),[332.5 502.5 399 399]); %[459.5 355.5 399 399]);%[332.5 502.5 399 399]);%[347.5 481.5 399 399]); 
    image_store_nv_before(:,:,x) = im;  
end

%% For Multi-mineral Sandstone - 2.3 um

clearvars im_resize num_img im ct_block
clc
ct_block = ncread('block00000026.nc','tomo');
im_resize = imresize(ct_block,0.33);
num_img = 40;
image_store_mm_before = zeros(400,400,num_img);

for x = 1:40
    im = imcrop(im_resize(:,:,x),[250.5 200.5 399 399]); 
    image_store_mm_before(:,:,x) = im;  
end

%% For Berea Sandstone - 5.4 um

clearvars im_resize num_img im ct_block
clc
ct_block = ncread('SFH_Berea.nc','tomo');
im_resize = imresize(ct_block,0.77);
num_img = 40;
image_store_sfh_before = zeros(400,400,num_img);

for x = 1:40
    im = imcrop(im_resize(:,:,x),[664.5 926.5 399 399]);%[664.5 806.5 657 600][793.5 743.5 399 399]); 
    image_store_sfh_before(:,:,x) = im;  
end


%% Save the images

save cropped_images_before_contrast.mat  image_store_yh_before image_store_gb_before image_store_ss_before image_store_nv_before image_store_mm_before image_store_sfh_before
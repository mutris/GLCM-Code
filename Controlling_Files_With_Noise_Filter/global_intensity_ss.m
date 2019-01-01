clear
load cropped_images_before_contrast.mat
a = unique(image_store_ss_before);
s = size(image_store_ss_before);
f = zeros(length(a),1);
sum_m = zeros(length(a),1);

for i = 1: length(a)
    c = find(image_store_ss_before == a(i));
    f(i) = length(c);
end

sum_m(1) = f(1);

for i = 2:length(a)
    sum_m(i) = sum_m(i-1) + f(i);
end    

%% 

a_min = 0;
a_max = 63;

s_low = 0.00001;
cut_low = s(1) * s(2) * s(3) * s_low;%size_im(1) * size_im(2) * s_low;
a_numl = find(sum_m >= cut_low);
a_low = a(min(a_numl));

s_high = 0.0025;
cut_high = s(1) * s(2) * s(3) * (1-s_high); %  size_im(1) * size_im(2) * (1-s_high);
a_numh = find(sum_m <= cut_high);
a_high = a(max(a_numh));

reference_intensity = zeros(size(a));

for i = 1: length(a) 
   
        if a(i) <= a_low
           reference_intensity(i) = floor(a_min);

        elseif a(i) > a_low && a(i) < a_high
            reference_intensity(i) = floor(a_min + (a(i)-a_low)* (a_max - a_min)/(a_high - a_low));    

        elseif a(i) >= a_high    
            reference_intensity(i) = floor(a_max);
       
        end
    
end

%%
clear x i j
num_img = 40;
image_store_ss_after = zeros(400,400,num_img);
current_image = zeros(400,400);
new_image = zeros(400,400);

for x = 1:40

    current_image = image_store_ss_before(:,:,x);
    for i = 1:400
        for j = 1:400
            new_intensity = find_from_reference_intensity(a,reference_intensity,current_image(i,j));
            new_image(i,j) = new_intensity;
        end     
    end
    image_store_ss_after(:,:,x) = new_image;
end

%% For Simon Sandstone - 3.016 um

clearvars im_resize num_img im ct_block
clc
test_auto_minerals_ss = zeros(400,400,40);
test_auto_pores_ss = zeros(400,400,40);
num_img = 40;

for x = 1:40 
    
    current_image = image_store_ss_before(:,:,x);
    [row_minerals,col_minerals] = find(current_image > a_high);
    im_conv_high = zeros(400,400);
    for p = 1: length(row_minerals)
            im_conv_high(row_minerals(p),col_minerals(p)) =  1;
        
    end
    test_auto_minerals_ss(:,:,x) = im_conv_high;
    
    [row_pores,col_pores] = find(current_image < a_low);
    im_conv_low = zeros(400,400);
    for p = 1: length(row_pores)
            im_conv_low(row_pores(p),col_pores(p)) =  1;
        
    end
    test_auto_pores_ss(:,:,x) = im_conv_low;    
end

%%

save ss_after_contrast.mat image_store_ss_after test_auto_minerals_ss test_auto_pores_ss 


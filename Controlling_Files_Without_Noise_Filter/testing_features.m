
test_auto_identify_yh = zeros(400,400,40);
num_img = 40;

for r = 1:40
    new_im = image_store_yh_after(:,:,r);
    [row_features,col_features] = find(new_im == 63);
    im_conv_high = zeros(400,400);
    for p = 1: length(row_features)
        
            im_conv_high(row_features(p),col_features(p)) =  1;
        
    end
    test_auto_identify_yh(:,:,r) = im_conv_high;
       
end

%%
implay(test_auto_identify_yh)
implay(image_store_yh_before)
implay(image_store_yh_after)
tic
run Images_Before_Image_Processing
run global_intensity_yh
run global_intensity_gb
run global_intensity_ss
run global_intensity_nv
run global_intensity_mm
run global_intensity_sfh
load yh_after_contrast.mat 
load gb_after_contrast.mat 
load ss_after_contrast.mat
load nv_after_contrast.mat
load mm_after_contrast.mat
load sfh_after_contrast.mat
run Controlling_Zero
run Controlling_45
run Controlling_90
run Controlling_135
run Omnidirectional_Stats
toc
save haralick_without_median_yh     


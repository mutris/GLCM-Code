

load yh_after_contrast.mat 
load gb_after_contrast.mat 
load ss_after_contrast.mat
load nv_after_contrast.mat
load mm_after_contrast.mat
load sfh_after_contrast.mat

%% Segment all images
segmented_yh = zeros(400,400,40);
segmented_nv = zeros(400,400,40);
segmented_gb = zeros(400,400,40);
segmented_mm = zeros(400,400,40);
segmented_ss = zeros(400,400,40);
segmented_sfh = zeros(400,400,40);

for step = 1:40

    segmented_yh(:,:,step) = segmentImage(image_store_yh_after(:,:,step));
    segmented_nv(:,:,step) = segmentImage(image_store_nv_after(:,:,step));
    segmented_gb(:,:,step) = segmentImage(image_store_gb_after(:,:,step));
    segmented_mm(:,:,step) = segmentImage(image_store_mm_after(:,:,step));
    segmented_ss(:,:,step) = segmentImage(image_store_ss_after(:,:,step));
    segmented_sfh(:,:,step) = segmentImage(image_store_sfh_after(:,:,step));
    
end

%% Bentheimer Sandstone

avg_pore_yh = zeros(40,1);
avg_grain_yh = zeros(40,1);
ssa_pore_yh = zeros(40,1);
ssa_grain_yh = zeros(40,1);
ssa_yh = zeros(40,1);
por_yh = zeros(40,1);

for step_yh = 1:40

    A = imcomplement(segmented_yh(:,:,step_yh));
    run GSD_ROCK
    avg_grain_yh(step_yh) = Average_grain_radius_micron;
    A = segmented_yh(:,:,step_yh);
    run PSD_ROCK
    avg_pore_yh(step_yh) = Average_pore_radius_micron;
    run Specific_Surface_area
    ssa_pore_yh(step_yh) = Specific_surface_pores_2D;
    ssa_grain_yh(step_yh) = Specific_surface_grains_2D;
    ssa_yh(step_yh)= Specific_surface_2D;
    por_yh(step_yh) = Porosity;

end

%% Navajo Sandstone

avg_pore_nv = zeros(40,1);
avg_grain_nv = zeros(40,1);
ssa_pore_nv = zeros(40,1);
ssa_grain_nv = zeros(40,1);
ssa_nv = zeros(40,1);
por_nv = zeros(40,1);

for step_nv = 1:40

    A = imcomplement(segmented_nv(:,:,step_nv));
    run GSD_ROCK
    avg_grain_nv(step_nv) = Average_grain_radius_micron;
    A = segmented_nv(:,:,step_nv);
    run PSD_ROCK
    avg_pore_nv(step_nv) = Average_pore_radius_micron;
    run Specific_Surface_area
    ssa_pore_nv(step_nv) = Specific_surface_pores_2D;
    ssa_grain_nv(step_nv) = Specific_surface_grains_2D;
    ssa_nv(step_nv)= Specific_surface_2D;
    por_nv(step_nv) = Porosity;

end

%% Multi-mineral Sandstone

avg_pore_mm = zeros(40,1);
avg_grain_mm = zeros(40,1);
ssa_pore_mm = zeros(40,1);
ssa_grain_mm = zeros(40,1);
ssa_mm = zeros(40,1);
por_mm = zeros(40,1);

for step_mm = 1:40

    A = imcomplement(segmented_mm(:,:,step_mm));
    run GSD_ROCK
    avg_grain_mm(step_mm) = Average_grain_radius_micron;
    A = segmented_mm(:,:,step_mm);
    run PSD_ROCK
    avg_pore_mm(step_mm) = Average_pore_radius_micron;
    run Specific_Surface_area
    ssa_pore_mm(step_mm) = Specific_surface_pores_2D;
    ssa_grain_mm(step_mm) = Specific_surface_grains_2D;
    ssa_mm(step_mm)= Specific_surface_2D;
    por_mm(step_mm) = Porosity;

end


%% Simon Sandstone

avg_pore_ss = zeros(40,1);
avg_grain_ss = zeros(40,1);
ssa_pore_ss = zeros(40,1);
ssa_grain_ss = zeros(40,1);
ssa_ss = zeros(40,1);
por_ss = zeros(40,1);

for step_ss = 1:40

    A = imcomplement(segmented_ss(:,:,step_ss));
    run GSD_ROCK
    avg_grain_ss(step_ss) = Average_grain_radius_micron;
    A = segmented_ss(:,:,step_ss);
    run PSD_ROCK
    avg_pore_ss(step_ss) = Average_pore_radius_micron;
    run Specific_Surface_area
    ssa_pore_ss(step_ss) = Specific_surface_pores_2D;
    ssa_grain_ss(step_ss) = Specific_surface_grains_2D;
    ssa_ss(step_ss)= Specific_surface_2D;
    por_ss(step_ss) = Porosity;

end

%% Glass Beads

avg_pore_gb = zeros(40,1);
avg_grain_gb = zeros(40,1);
ssa_pore_gb = zeros(40,1);
ssa_grain_gb = zeros(40,1);
ssa_gb = zeros(40,1);
por_gb = zeros(40,1);

for step_gb = 1:40

    A = imcomplement(segmented_gb(:,:,step_gb));
    run GSD_ROCK
    avg_grain_gb(step_gb) = Average_grain_radius_micron;
    A = segmented_gb(:,:,step_gb);
    run PSD_ROCK
    avg_pore_gb(step_gb) = Average_pore_radius_micron;
    run Specific_Surface_area
    ssa_pore_gb(step_gb) = Specific_surface_pores_2D;
    ssa_grain_gb(step_gb) = Specific_surface_grains_2D;
    ssa_gb(step_gb)= Specific_surface_2D;
    por_gb(step_gb) = Porosity;

end

%% Berea sandstone

avg_pore_sfh = zeros(40,1);
avg_grain_sfh = zeros(40,1);
ssa_pore_sfh = zeros(40,1);
ssa_grain_sfh = zeros(40,1);
ssa_sfh = zeros(40,1);
por_sfh = zeros(40,1);

for step_sfh = 1:40

    A = imcomplement(segmented_sfh(:,:,step_sfh));
    run GSD_ROCK
    avg_grain_sfh(step_sfh) = Average_grain_radius_micron;
    A = segmented_sfh(:,:,step_sfh);
    run PSD_ROCK
    avg_pore_sfh(step_sfh) = Average_pore_radius_micron;
    run Specific_Surface_area
    ssa_pore_sfh(step_sfh) = Specific_surface_pores_2D;
    ssa_grain_sfh(step_sfh) = Specific_surface_grains_2D;
    ssa_sfh(step_sfh)= Specific_surface_2D;
    por_sfh(step_sfh) = Porosity;

end


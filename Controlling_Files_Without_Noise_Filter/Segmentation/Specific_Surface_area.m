
% INPUTS
% A = uint8(BW);
A = uint8(A);
Resolution=7; % micron/pixel

A=imbinarize(A,graythresh(A));
A=bwmorph(A,'majority',5);
Conn=8;
[s1,s2]=size(A);
P=bwperim(A);
At=s1*s2;       % Total surface
Ag=sum(sum(A)); %Area of grains
Ap=sum(sum(~A)); %Area of pores
Perim=sum(sum(P));

Specific_surface_pores_2D=Perim/Resolution/Ap;

Specific_surface_grains_2D=Perim/Resolution/Ag;

Porosity=Ap/At;
Specific_surface_2D=Perim/Resolution/At;

%Outputs

figure('units','normalized','outerposition',[0 0 1 1])
subplot(1,2,1)
imshow(A)
imwrite(P,'Output.png')
subplot(1,2,2)
imshow(P)
annotation('textbox',[.2 .85 .1 .1], 'String', [ 'Porosity = ' num2str(Porosity) ' (ratio)'])
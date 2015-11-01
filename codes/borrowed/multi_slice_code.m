clear all
close all


%import data from a VTI file
data=readVTI('dump.additive4.13.vti', [300,300,200]);
%convert to black and white
BWdata=Grain2Boundary(data);
%preform 2pt statistics 
GG=noob2ptauto(BWdata,0);
%display a slice of the 2pt statistics space
imagesc(GG(:,:,20))

%{
slice20=data(:,:,20);
slice40=data(:,:,40);
slice60=data(:,:,60);
slice80=data(:,:,80);
slice100=data(:,:,100);
BW20=Grain2Boundary(slice20);
BW40=Grain2Boundary(slice40);
BW60=Grain2Boundary(slice60);
BW80=Grain2Boundary(slice80);
BW100=Grain2Boundary(slice100);
imagesc(BW20)
imagesc(BW40)
imagesc(BW60)
%imagesc(BW80)
%}
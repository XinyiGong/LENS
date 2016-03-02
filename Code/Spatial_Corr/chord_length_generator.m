close all
clear
clc
tic
cd C:\Users\xgong42\Documents\GitHub\LENS\codes\our_version
filepath='C:\Users\xgong42\Documents';%grain boundary data folder
filename=[filepath,'\','138.mat'];% plus GBdata .mat file name
load(filename);
[hist]=chordlengthdist(BWdata);
toc

% savepath='C:\Users\xgong42\Documents\chordlength_72_Test';
% save([savepath,'\chordlength_',filename],'hist');
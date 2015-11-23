close all
clear
clc
tic
filepath='C:\Users\xgong42\Documents\MATIN_struct';%grain boundary data folder
filename=[filepath,'\','128.mat'];% plus GBdata .mat file name
load(filename);
[hist]=chordlengthdist2(BWdata);
toc

% savepath='C:\Users\xgong42\Documents\chordlength_72_Test';
% save([savepath,'\chordlength_',filename],'hist');
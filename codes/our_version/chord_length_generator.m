close all
clear
clc
tic
filepath='/Users/Gong/Desktop/first_72_Test';%grain boundary data folder
filename=[filepath,'/','1.mat'];% plus GBdata .mat file name
load(filename);
[hist]=chordlengthdist_v1(BWdata);
toc

% savepath='C:\Users\xgong42\Documents\chordlength_72_Test';
% save([savepath,'\chordlength_',filename],'hist');
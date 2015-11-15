close all
clear
clc
tic
filepath='C:\Users\xgong42\Documents\first_72_Test';%grain boundary data folder
filename=[filepath,'\','1.mat'];% plus GBdata .mat file name
load(filename);
[hist]=chordlengthdist2(BWdata);
toc

% savepath='C:\Users\xgong42\Documents\chordlength_72_Test';
% save([savepath,'\chordlength_',filename],'hist');
close all
clear
clc
tic
filepath='C:\Users\xgong42\Documents\first_72_Test';
filename=[filepath,'\','1.mat'];
load(filename);
[hist]=chordlengthdist2(BWdata);
toc

% savepath='C:\Users\xgong42\Documents\chordlength_72_Test';
% save([savepath,'\chordlength_',filename],'hist');
close all
clear
clc
tic
%filepath='C:\Users\xgong42\Documents\first_72_Test';
filepath='C:\Users\Andrey\Desktop\Theron_presentation';

filename=[filepath,'\','138.mat'];
load(filename);
%[hist]=chordlengthdist(BWdata);
[hist]=chordlengthdist2(BWdata);
toc

% savepath='C:\Users\xgong42\Documents\chordlength_72_Test';
% save([savepath,'\chordlength_',filename],'hist');

savepath='C:\Users\Andrey\Desktop\Theron_presentation';
save([savepath,'\CLD2_',filename,'.mat'],'hist');
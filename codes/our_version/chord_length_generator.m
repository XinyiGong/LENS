close all
clear
clc
tic
filepath='/Users/Gong/Desktop/first_72_Test';
filename='1.mat';
[hist]=chordlengthdist([filepath,'/',filename]);
toc

savepath='/Users/Gong/Desktop/chord_length_72';
save([savepath,'/chordlength_',filename],'hist');
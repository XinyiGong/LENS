clear
close all
clc


filelist=dir('*.mat');

for fl=1:length(filelist)
    load(filelist(fl).name,'filename');
    disp(filename)
end


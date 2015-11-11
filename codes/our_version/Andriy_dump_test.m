clear all
close all
clc

%test data dump
%FILES=zeros(3,0,0)
filepath1='F:\MATIN_2015\matfile_dump\T20-X-V10-'; %81
filepath3='F:\MATIN_2015\matfile_dump\T20-X-V15-'; %40
filepath2='F:\MATIN_2015\matfile_dump_2\T20-X-V10-'; %27
 
g=27;
FILES=cell(g,1);
for i=1:g%81
    load([filepath2,'\',num2str(i),'.mat']);
    FILES{i,1}=filename;
    %filename
end

FILES
%celldata = cellstr(FILES)

%name=cell(5,1);
%name{1,1}='T5-X-V7-5-';
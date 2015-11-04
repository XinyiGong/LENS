% LENS PCA script
clear
clc
close all 

tic
%Chage directory to the folder with files
cd('/Users/Gong/Documents/Gross_Landfill/10_21_2015');
filelist=dir('*.mat');

% Load one file to have preallocate GG
m=matfile(filelist(1).name);
GG=zeros(length(filelist),numel(m.data));
rowname=char(zeros(length(filelist),100));

for i=1:1
    m=matfile(filelist(i).name);
    
    %Get file names
    rowname(i,1:length(m.filename))=m.filename;
    
    for j=1:size(m.data,1)
        for k=1:size(m.data,2)
            
            %Set starting point of each segment
            l=(k-1)*size(m.data,2)+(j-1)*size(m.data,2)*size(m.data,1);
            
            %Give value to input of PCA
            GG(i,l+1:l+size(m.data,3))=m.data(j,k,:);
        end
    end
end
save('/Users/Gong/Desktop/GG','GG','-v7.3');

toc
% %% PCA
% [PC,Var] = PCAConstruct(GG,length(filelist));
% 
% % save PC, Var, rowname
% 
% savepath='/Users/Gong/Documents/LENS/results/Var_72-structure_2pt_PCA';
% save([savepath,'/metadata'],'rowname');
% save([savepath,'/72_2pt_PCA'],'PC');
% save([savepath,'/72_2pt_PC_Var'],'Var');


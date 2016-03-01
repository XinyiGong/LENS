
% LENS PCA script

clc
close all
%Chage directory to the folder with files
path='/Users/Gong/Desktop/CLD2NE';

filelist=dir([path,'/*.mat']);

% Load one file to preallocate GG
load([path,'/',filelist(1).name]);
GG=zeros(1422,900);
% rowname=char(zeros(length(filelist),100));

%GG=zeros(length(3),numel(data));
%rowname=char(zeros(length(3),100));

for i=1:1422
    load([path,'/',num2str(v7p5ind{1,2}(i,1)),'.mat']);
    %Get file names
    %rowname(i,1:3)=filename;
%     rowname(i,1:length(filename))=filename;
    GG(i,:)=[hist(:,1)' hist(:,2)' hist(:,3)'];
end

% %% PCA
[PC,Var,Basis] = PCAConstruct3(GG,900);
%[PC,Var] = PCAConstruct(GG,3);
% save PC, Var, rowname

savepath='/Users/Gong/Desktop/LENS/matin_results/CLD_PCA_hardsplit';
%savepath='C:\Users\Andrey\Google Drive\MATIN 2015\Data\72_PC_VAR';
% save([savepath,'/metadata4'],'rowname');
save([savepath,'/CLD2_NE_PCAXYZ_noV7p5'],'PC');
save([savepath,'/CLD2_NE_PCAXYZ_noV7p5'],'Var','-append');
save([savepath,'/CLD2_NE_PCAXYZ_noV7p5'],'Basis','-append');


% LENS PCA script

tic
%Chage directory to the folder with files
%path='/nv/hp22/xgong42/scratch/2pt_data';
path='/nv/hp22/xgong42/scratch/CLD_ENE/NE/CLD2_NE';

filelist=dir([path,'/*.mat']);

% Load one file to have preallocate GG
load([path,'/',filelist(1).name]);
GG=zeros(length(filelist),300);
rowname=char(zeros(length(filelist),100));

%GG=zeros(length(3),numel(data));
%rowname=char(zeros(length(3),100));

for i=1:length(filelist)
    load([path,'/',filelist(i).name]);
    %Get file names
    %rowname(i,1:3)=filename;
    rowname(i,1:length(filename))=filename;
    GG(i,:)=hist(:,3);
end

% %% PCA
[PC,Var] = PCAConstruct(GG,300);
%[PC,Var] = PCAConstruct(GG,3);
% save PC, Var, rowname

%savepath='/nv/hp22/xgong42/scratch/2pt_PCA_data';
savepath='/nv/hp22/xgong42/scratch/CLD_PCA/CLD_PCA_NE/CLD2_NE_PCAZ';
%savepath='C:\Users\Andrey\Google Drive\MATIN 2015\Data\72_PC_VAR';
save([savepath,'/metadata'],'rowname');
save([savepath,'/CLD2_NE_PCAZ'],'PC');
save([savepath,'/CLD2_NE_PCAZ'],'Var','-append');



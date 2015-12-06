%{ 
LENS 2pt stats to PCA script
takes a subset of 1000 randomly sampled microstructures, sorted in
accending order.
%}
%Chage directory to the folder with files
path='/nv/hp22/xgong42/scratch/2pt_data';

filelist=dir([path,'/*.mat']);

% Load one file to have preallocate GG
load([path,'/',filelist(1).name]);
elnum=ceil(numel(data)/2);
GG=zeros(length(filelist),elnum);
rowname=char(zeros(length(filelist),100));

% Take subset of 1000 random 1-1799 integers
a = randperm(1799,1000)';
A=sort(a,'ascend');

for i=1:1000
    load([path,'/',num2str(A(i,1)),'.mat']);
    %Get file names
    %rowname(i,1:3)=filename;
    rowname(i,1:length(filename))=filename;
    GG(i,:)=data(1:elnum);
end

%PCA
[PC,Var] = PCAConstruct2(GG,1000);

savepath='/nv/hp22/xgong42/scratch/2pt_reduced_PCA/Rand_PCA';
%savepath='C:\Users\Andrey\Google Drive\MATIN 2015\Data\72_PC_VAR';
save([savepath,'/metadata'],'rowname');
save([savepath,'/rand_1000_2pt_PCA'],'PC');
save([savepath,'/rand_1000_2pt_PC_Var'],'Var');

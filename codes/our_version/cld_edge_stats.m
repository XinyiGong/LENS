clear
close all
clc
path='/Users/Gong/Desktop/matin_results/CLD1_E';
savepath='/Users/Gong/Documents/LENS/results/Chord_length_distribution/cld_edge_stats';
maxrg=0.5;
binnb=101;


filelist=dir([path,'/*.mat']);

load([path,'/',filelist(1).name],'stat');
stats=zeros(3,length(filelist));
edges=linspace(0,maxrg,binnb);
N=zeros(3,101);
bins=zeros(3,length(filelist));


for i=1:length(filelist);
    load([path,'/',num2str(i),'.mat'],'stat');
    stats(:,i)=stat';
end

for i=1:3;
    [N(i,:),bins(i,:)]=histc(stats(i,:),edges);
end

save([savepath,'/CLD1_E'],'N','edges','stats','bins');
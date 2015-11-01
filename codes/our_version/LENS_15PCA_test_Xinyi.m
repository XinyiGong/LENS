%{
LENS PCA script
%}
clear all
close all 
%declare the homefolder: 
tic
%path='/Users/Gong/Documents/Gross_Landfill/10_21_2015';
path='/Users/Gong/Documents/Gross_Landfill/10_21_2015';
length=72;
d2pt=199; %dimension of the 2pt-statistics(e.g. for 199*199*199 matrix, d2pt=199)
p=0;
tic
GG=zeros(length,d2pt*d2pt*d2pt);
for i=1:length
    name=[path,'/',num2str(i),'.mat'];
    load(name);
    
    
    
    %capture the file whose name has 'W60'
    a=strfind(filename,'W60');
    a=size(a);
    if a~=0
        if p==0
            p=i;
        else
            p=[p,i];
        end
    end
    
    
    
    
    for j=1:d2pt
        for k=1:d2pt
            l=(k-1)*d2pt+(j-1)*d2pt*d2pt; %starting point of each segment in "oneline"
            GG(i,l+1:l+d2pt)=data(j,k,:);
        end
    end
end
toc
%% PCA
[PC,Var] = PCAConstruct(GG,length);

%%
% plot(Var)
%%
PC1=PC(:,1);
PC2=PC(:,2);
PC3=PC(:,3);
%%
scatter3(PC1(p),PC2(p),PC3(p),'ro','filled');
toc
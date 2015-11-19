%{
PACE code converts the BWdata to 2pt statistics
input:[300,300,200] grain boundary data 
output:[199,199,199] 2pt statistics data
**remember to place scripts into PACE account
noob2ptauto
CorrMaster
%}

%clear all
clc
tic
loadpath='/nv/hp22/xgong42/scratch/GB_data';
savepath='/nv/hp22/xgong42/scratch/2pt_data';
%main=dir(loadpath);
for i=1:5%1799
load([loadpath,'/',num2str(i),'.mat']);
data=noob2ptauto(BWdata,0); %preform 2pt statistics
save([savepath,'/',num2str(i)],'data');
save([savepath,'/',num2str(i)],'filename','-append');
clear data;
clear filename;
end
toc
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
loadpath='/Users/Gong/Google Drive/DataChallenge';
savepath='/Users/Gong/Google Drive/DataChallenge/2pt_stat';
%main=dir(loadpath);
for i=1:10%1799
load([loadpath,'/HT650_',num2str(i),'.mat']);
twopt=noob2ptauto(sem,1); %preform 2pt statistics
save([savepath,'/HT650_',num2str(i),'.mat'],'twopt');
end
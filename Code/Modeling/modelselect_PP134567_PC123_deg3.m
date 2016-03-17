load('C:\Users\xgong42\Google Drive\Data\PC\PC_ChLOrig_HC_xd75_V7p5W70');
load('C:\Users\xgong42\Google Drive\Data\PP\metadata_ChLOrig_HC_xd75_V7p5W70');
savepath = 'C:\Users\xgong42\Google Drive\Data\PPtoPCModels\';

prm = prms{1,2};
tic
for pccn = 1:10
    modelname = ['model_PP134567_PC',num2str(pccn),'_deg3_ChLOrig_HC_xd75_V7p5W70'];
    reg = ModelSelect(prm(:,[1 3 4 5 6 7]),PC(:,pccn),3);
    save([savepath,modelname],'reg');
end
toc
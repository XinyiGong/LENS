load('C:\Users\xgong42\Documents\LENS\Data\PC\PC_ChLOrig_HC_V7p5W70');
load('C:\Users\xgong42\Documents\LENS\Data\PP\metadata_ChLOrig_HC_V7p5W70');
savepath = 'C:\Users\xgong42\Documents\LENS\Data\PPtoPCModels\';

prm = prms{1,2};
tic
for pccn = 1:1
    modelname = ['model_PP134567_PC',num2str(pccn),'_deg3_ChLOrig_HC_V7p5W70'];
    reg = ModelSelect(prm(:,[1 3 4 5 6 7]),PC(:,pccn),3);
    save([savepath,modelname],'reg');
end
toc
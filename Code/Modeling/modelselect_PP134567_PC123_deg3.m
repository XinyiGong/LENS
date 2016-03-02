load('C:\Users\xgong42\Documents\LENS\Data\PC\CLD2_NE_PCAXYZ_noV7p5');
load('C:\Users\xgong42\Documents\LENS\Data\PP\metadata_noV7p5');
savepath = 'C:\Users\xgong42\Documents\LENS\Data\PPtoPCModels\';

for pccn = 1:3
    modelname = ['model_PP134567_PC',num2str(pccn),'_deg3_PCAXYZ_CLD2_NE_noV7p5'];
    reg = ModelSelect(prm(:,[1 3 4 5 6 7]),PC(:,pccn),3);
    save([savepath,modelname],'reg');
end
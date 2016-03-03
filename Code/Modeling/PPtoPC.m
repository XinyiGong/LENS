% Define paths
modelpath = '/Users/Gong/Desktop/LENS/Data/PPtoPCModels/';
pppath = '/Users/Gong/Desktop/LENS/Data/PP/';
savepcpath = '/Users/Gong/Desktop/LENS/Data/PC/';
pcnb = 3;
modelname1 = 'model_PP134567_PC';
modelname2 = '_deg3_PCAXYZ_CLD2_NE_noW70';
ppname = 'metadata_W70';
savepcname = 'ModelCreatedPCs_W70';

% Loading and initialize
load([pppath,ppname]);
PCs = zeros(size(prm,1),pcnb);

% Acquire PC values
for i = 1:pcnb
    load([modelname1,num2str(i),modelname2]);
    for j = 1:size(prm,1)
        PCs(j,i)=reg.PolynomialExpression(prm(j,1),prm(j,3),prm(j,4),prm(j,5),prm(j,6),prm(j,7));
    end
end

% Save
save([savepcpath,savepcname],'PCs');

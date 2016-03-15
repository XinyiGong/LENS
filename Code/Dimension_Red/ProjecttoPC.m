% Define paths and names
statpath = '/Users/Gong/Desktop/LENS/Data/Statistics/';
statname = 'ChLOrig_HC_V7p5W70';
trainpcpath = '/Users/Gong/Desktop/LENS/Data/PC/';
trainpcname = 'PC_ChLOrig_HC_V7p5W70';
savepcpath = '/Users/Gong/Desktop/LENS/Data/PC/';
savepcname = 'project_PCs_ChLOrig_HC_V7p5W70';

% load
load([statpath,statname],'GG'); % !!!be careful with the order here!!!
load([trainpcpath,trainpcname]);

% Project to PC
PCp = (GG-Mean(ones(1,size(GG,1)),:))*Basis;

% Save
save([savepcpath,savepcname],'PCp');
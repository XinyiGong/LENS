% Define paths and names
pcpath = '/Users/Gong/Desktop/LENS/Data/PC/';
pcname = 'ModelCreatedPCs_ChLOrig_HC_V7p5W70';
trainpcpath = '/Users/Gong/Desktop/LENS/Data/PC/';
trainpcname = 'PC_ChLOrig_HC_V7p5W70';
savestatpath = '/Users/Gong/Desktop/LENS/Data/Statistics/';
savestatname = 'Backproject_PC1234_ChLOrig_HC_V7p5W70';


% Load
load([pcpath,pcname]);
load([trainpcpath,trainpcname],'Basis','Mean');

% Decide how many PCs to use
PCs = PCs(:,1:4);

% Reconstruction from PC
GGbp = PCARecon(PCs,Basis,Mean);

% Save
save([savestatpath,savestatname],'GGbp');
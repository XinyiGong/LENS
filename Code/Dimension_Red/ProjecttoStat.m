% Define paths and names
pcpath = '/Users/Gong/Desktop/LENS/Data/PC/';
pcname = 'ModelCreatedPCs_V7p5';
trainpcpath = '/Users/Gong/Desktop/LENS/Data/PC/';
trainpcname = 'CLD2_NE_PCAXYZ_noV7p5';
savestatpath = '/Users/Gong/Desktop/LENS/Data/Statistics/';
savestatname = 'Backproject_CLD2_NE_V7p5';


% Load
load([pcpath,pcname]);
load([trainpcpath,trainpcname],'Basis','Mean');

% Reconstruction from PC
GGbp = PCARecon(PCs,Basis,Mean);

% Save
save([savestatpath,savestatname],'GGbp');
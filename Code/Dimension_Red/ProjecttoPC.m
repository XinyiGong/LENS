% Define paths and names
statpath = '/Users/Gong/Desktop/LENS/Data/Statistics/';
statname = 'CLD2_NE_V7p5';
trainpcpath = '/Users/Gong/Desktop/LENS/Data/PC/';
trainpcname = 'CLD2_NE_PCAXYZ_noV7p5';
savepcpath = '/Users/Gong/Desktop/LENS/Data/PC/';
savepcname = 'project_CLD2_NE_PCAXYZ_V7p5';

% load
load([statpath,statname],'GG'); % !!!be careful with the order here!!!
load([trainpcpath,trainpcname]);

% Project to PC
PCp = (GG-Mean(ones(1,size(GG,1)),:))*Basis;

% Save
save([savepcpath,savepcname],'PCp');
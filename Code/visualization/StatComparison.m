% Define paths and names
saveerrorpath = '/Users/Gong/Desktop/LENS/Data/Visual/HardSplit_V7p5W70_HC/';
saveerrorname = 'error__ChLOrig_HC_V7p5W70';

% Compare GG(CLD statistics)
GG = GGs{1,1};
cmp = GG-GGbp;
GGnmerror=zeros(size(GG,1),1);
GGerror=zeros(size(GG,1),1);
for i = 1:size(GG,1)
    GGnmerror(i,1) = norm(cmp(i,:),2)/norm(GG(i,:),2);
    GGerror(i,1) = sqrt(norm(cmp(i,:),2)*norm(cmp(i,:),2)/size(cmp,2));
end
MAnmE = mean(GGnmerror(:,1));
MAE = mean(GGerror(:,1));

% Save
save([saveerrorpath,saveerrorname],'GGnmerror');
save([saveerrorpath,saveerrorname],'GGerror','-append');
save([saveerrorpath,saveerrorname],'MAnmE','-append');
save([saveerrorpath,saveerrorname],'MAE','-append');
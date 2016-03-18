% Define paths and names
saveerrorpath = '/Users/Gong/Google Drive/Data/Visual/HardSplit_xd75_V7p5W70_HC/';
saveerrorname = 'error__ChLOrig_PC1234_HC_xd75_V7p5W70';

% Compare GG(CLD statistics)
GG = GGs{1,1};% Give data to GG
cmp = GG-GGbp;
GGnmerror=zeros(size(GG,1),1);
GGerror=zeros(size(GG,1),1);
for i = 1:size(GG,1)
    GGnmerror(i,1) = norm(cmp(i,:),2)/norm(GG(i,:),2);
    GGerror(i,1) = sqrt(norm(cmp(i,:),2)*norm(cmp(i,:),2)/size(cmp,2));
end
MAnmE = mean(GGnmerror(:,1));
MAE = mean(GGerror(:,1));
wt = sum(GG,1)/687;
GGnmerrorn=zeros(size(GG,1),1);
GGnmerrornn=zeros(size(GG,1),1);
for i = 1:size(GG,1)
    sth = 0;
    asth = 0;
    for j = 1:900
        sth = sth+(cmp(i,j))^2*wt(1,j);
        asth = asth+(GG(i,j))^2*wt(1,j);
    end
    GGnmerrorn(i,1) = sqrt(sth)/norm(GG(i,:),2);
    GGnmerrornn(i,1) = sqrt(sth)/sqrt(asth);
end
MAnmEn = mean(GGnmerrorn(:,1));
MAnmEnn = mean(GGnmerrornn(:,1));
% Save
save([saveerrorpath,saveerrorname],'GGnmerror','GGnmerrorn','MAnmEn','GGnmerrornn','MAnmEnn');
save([saveerrorpath,saveerrorname],'GGerror','-append');
save([saveerrorpath,saveerrorname],'MAnmE','-append');
save([saveerrorpath,saveerrorname],'MAE','-append');
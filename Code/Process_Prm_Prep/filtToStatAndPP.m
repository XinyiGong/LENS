% Define paths and nanmes
pppath='/Users/Gong/Google Drive/Data/PP/';
ppname='metadata_ChLOrig';
statpath = '/Users/Gong/Google Drive/Data/Statistics/';
statname = 'ChLOrig';
savepppath='/Users/Gong/Google Drive/Data/PP/';
saveppname='metadata_ChLOrig_HC_xd75_x3';
savestatpath = '/Users/Gong/Google Drive/Data/Statistics/';
savestatname = 'ChLOrig_HC_xd75_x3';

% Load data
load([pppath,ppname]);
load([statpath,statname]);

% GatherCertainPPs
cnt = 0;
for i=1:size(prm,1)
    if Edge(i,1) <= 0.1 && Edge(i,2) <= 0.1 && Edge(i,3) <= 0.1 && prm(i,5) ~= 75
        if prm(i,1) == 35 && prm(i,2) == 1 && prm(i,3) == 7.5 && prm(i,4) == 90 && prm(i,5) == 125 && prm(i,6) == 70
            continue
        end
        cnt=cnt+1;
        GGn(cnt,:) = GG(i,:);
        Edgen(cnt,:) = Edge(i,:);
        prmn(cnt,:) = prm(i,:);
        index(cnt,1) = i;
    end
end
prm = prmn;
GG=GGn;
Edge = Edgen;

% Save Results
save([savepppath,saveppname],'parlist','prm','index');
save([savestatpath,savestatname],'GG','Edge');



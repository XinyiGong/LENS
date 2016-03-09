% Define paths and nanmes
pppath='/Users/Gong/Desktop/LENS/Data/PP/';
ppname='metadata_ChLOrig';
statpath = '/Users/Gong/Desktop/LENS/Data/Statistics/';
statname = 'ChLOrig';
savepppath='/Users/Gong/Desktop/LENS/Data/PP/';
saveppname='metadata_ChLOrig_HC';

% Load data
load([pppath,ppname]);
load([statpath,statname]);

% GatherCertainPPs
cnt = 0;
for i=1:size(prm,1)
    if Edge(i,1) <= 0.1 && Edge(i,2) <= 0.1 && Edge(i,3) <= 0.1
        cnt=cnt+1;
        prmn(cnt,:) = prm(i,:);
        index(cnt,1) = i;
    end
end
prm = prmn;

% Save Results
save([savepppath,saveppname],'parlist','prm','index');



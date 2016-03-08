% Define paths and nanmes
pppath='/Users/Gong/Desktop/LENS/Data/PP/';
ppname='metadata_ChLOrig';
savepppath='/Users/Gong/Desktop/LENS/Data/PP/';
saveppname='metadata_V7p5W70';

% Load data
load([pppath,ppname]);

% GatherCertainPPs
cnt = 0;
cntt = 0;
for i=1:size(prm,1)
    if prm(i,3) == 7.5 || prm(i,4) == 70
        cnt=cnt+1;
        prmn(cnt,:) = prm(i,:);
        index(cnt,1) = i;
    else
        cntt = cntt+1;
        prmm(cntt,:) = prm(i,:);
        index(cntt,2) = i;
    end
end
prms{1,1} = prmn;
prms{1,2} = prmm;

% Save Results
save([savepppath,saveppname],'parlist','prms','index');



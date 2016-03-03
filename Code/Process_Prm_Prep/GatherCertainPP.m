% Define paths and nanmes
pppath='/Users/Gong/Desktop/LENS/Data/PP/';
ppname='metadata_v3';
savepppath='/Users/Gong/Desktop/LENS/Data/PP/';
saveppname='metadata_V7p5';

% Load data
load([pppath,ppname]);

% GatherCertainPPs
cnt=0;
for i=1:size(prm,1)
    if prm(i,3)==7.5
        cnt=cnt+1;
    end
end
prmn=zeros(cnt,size(prm,2));
cnt=0;
for i=1:size(prm,1)
    if prm(i,3)==7.5
        cnt=cnt+1;
        prmn(cnt,:)=prm(i,:);
    end
end
prm=prmn;

% Save Results
save([savepppath,saveppname],'prm');
save([savepppath,saveppname],'parlist','-append');


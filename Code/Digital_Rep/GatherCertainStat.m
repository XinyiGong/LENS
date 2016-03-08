% Define paths and names
statpath = '/Users/Gong/Desktop/LENS/Data/Statistics/';
statname = 'ChLOrig';
pppath = '/Users/Gong/Desktop/LENS/Data/PP/';
ppname = 'metadata_V7p5W70';% if select according to PP
savestatpath = '/Users/Gong/Desktop/LENS/Data/Statistics/';
savestatname = 'ChLOrig_V7p5W70';

% Initiation
load([statpath,statname]);
load([pppath,ppname]);

% Reshape Input for PCAConstruction
cnt = 0;
cntt = 0;
for i=1:size(index,1)
    if index(i,1) ~= 0
        cnt = cnt+1;
        GGs{1,1}(cnt,:) = GG(i,:);
    end
    if index(i,2) ~= 0
        cntt = cntt+1;
        GGs{1,2}(cntt,:) = GG(i,:);
    end
end


% Save
save([savestatpath,savestatname],'GGs');

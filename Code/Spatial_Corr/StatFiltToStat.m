% Define paths and names
statpath = '/Users/Gong/Desktop/LENS/Data/Statistics/';
statname = 'ChLOrig';
savestatpath = '/Users/Gong/Desktop/LENS/Data/Statistics/';
savestatname = 'ChLOrig_HC';

% Initiation
load([statpath,statname]);

% Reshape Input for PCAConstruction
cnt = 0;
for i=1:size(Edge,1)
    if Edge(i,1) <= 0.1 && Edge(i,2) <= 0.1 && Edge(i,3) <= 0.1
        cnt = cnt+1;
        GGn(cnt,:) = GG(i,:);
        Edgen(cnt,:) = Edge(i,:);
    end
end
GG=GGn;
Edge = Edgen;

% Save
save([savestatpath,savestatname],'GG','Edge');


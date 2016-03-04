% Define paths and names
saveerrorpath = '/Users/Gong/Desktop/LENS/Data/Visual/HardSplit_W70/';
saveerrorname = 'error_PC_CLD2_NE_W70';

% Compare GG(CLD statistics)
cmp = PCp(:,1:size(PCs,2))-PCs;
PCnmerror=zeros(1,size(PCs,2));
PCerror=zeros(1,size(PCs,2));
for i = 1:size(PCs,2)
    PCnmerror(1,i) = norm(cmp(:,i),2)/norm(PCp(:,i),2);
    PCerror(1,i) = sqrt(norm(cmp(:,i))*norm(cmp(:,i))/size(cmp,1));
end

% Save
save([saveerrorpath,saveerrorname],'PCnmerror');
save([saveerrorpath,saveerrorname],'PCerror','-append');
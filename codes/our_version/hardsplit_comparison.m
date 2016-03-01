PCs=PC(:,1:3);

Basist=Basis';
Basistt=Basist(1:3,:);
Bs=PCs*Basistt;
% Br=GG;
% for i=1:900
%     Br(:,i)=GG(:,i)-mean(GG(:,i));
% end

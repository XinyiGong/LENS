load CLD2_NE_PCAXYZ_noV7p5
load metadata_noV7p5
% Choose the degrees you want to try
degs=[0 1 2 3];
% Specify the highest degree
deg=3;

% Choose column number(PP or PC in our case) you want to use for fitting the model
% !!! SENSITIVE to ORDER!!!
cn=[1 3 4 5 6 7];

% Choose column number(PC or PP in our case) you want to fit
fcn=1;




choice={};
for i=1:length(cn)
    choice={choice{:},degs};
end

cb=allcomb(choice{:});

expinf=zeros(size(cb,1),5);
for ii=1:size(cb,1)
    reg2{ii} = MultiPolyRegress2(prm(:,cn),PC(:,fcn),deg,cb(ii,:),'range');
    expinf(ii,:)=[reg2{ii}.MAE reg2{ii}.RSquare reg2{ii}.CVMAE reg2{ii}.CVRSquare reg2{ii}.flag];
end
%
[~,I]=sort(expinf(:,1));
expinf=expinf(I,:);
cb=cb(I,:);
k=find(expinf(:,5)==0,1);
% expinf(k,:);
% cb(k,:);
savepath='/nv/hp22/xgong42/scratch/CLD_model_hardsplit';
save([savepath,'/noV7p5modelselect-PP134567-PC1-deg3'],'expinf');
save([savepath,'/noV7p5modelselect-PP134567-PC1-deg3'],'cb','-append');
save([savepath,'/noV7p5modelselect-PP134567-PC1-deg3'],'k','-append');
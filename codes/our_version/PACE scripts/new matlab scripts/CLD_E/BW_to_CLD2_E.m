tic
filepath='/nv/hp22/xgong42/scratch/GB_data';
savepath='/nv/hp22/xgong42/scratch/CLD_ENE/E/CLD2_E';

for i=1:1799
filename=[filepath,'/',num2str(i),'.mat'];
load(filename);
[hist]=CLD2_E(BWdata);
save([savepath,'/',num2str(i),'.mat'],'hist');
save([savepath,'/',num2str(i),'.mat'],'filename','-append');
end
toc

tic
filepath='/nv/hp22/xgong42/scratch/GB_data';
savepath='/nv/hp22/xgong42/scratch/CLD2';

for i=1:5%1799
filename=[filepath,'/',num2str(i),'.mat'];
load(filename);
[hist]=chordlengthdist2(BWdata);
save([savepath,'/',num2str(i),'.mat'],'hist');
save([savepath,'/',num2str(i),'.mat'],'filename','-append');
end
toc
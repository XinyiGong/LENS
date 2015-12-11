tic
filepath='/nv/hp22/xgong42/scratch/GB_data';
savepath='/nv/hp22/xgong42/scratch/CLD_E_cnt/CLD1_E';

for i=1:1799
filename=[filepath,'/',num2str(i),'.mat'];
load(filename);
[hist]=cnt_CLD1_E(BWdata);
save([savepath,'/',num2str(i),'.mat'],'hist');
save([savepath,'/',num2str(i),'.mat'],'filename','-append');
end
toc

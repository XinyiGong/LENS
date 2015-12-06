%% Load PC, metadata(prm), stats

%% Mark structure according to threshold and dimension
%  Plot PCA
threshold=0.05;
dm=1;

showprm=zeros(1,size(stats,2));
for i=1:size(stats,2)
    if stats(dm,i)>=threshold
        showprm(i)=1;
    end
end
cmap=hsv(2);
plot3(PC(logical(showprm),1),PC(logical(showprm),2),PC(logical(showprm),3),'kd','MarkerFaceColor',cmap(1,:),'MarkerSize',8);
hold on
plot3(PC(logical(~showprm),1),PC(logical(~showprm),2),PC(logical(~showprm),3),'kd','MarkerFaceColor',cmap(2,:),'MarkerSize',8);
grid on
xlabel('PC 1','FontSize',12)
ylabel('PC 2','FontSize',12)
zlabel('PC 3','FontSize',12)
set(gca,'FontSize',12)
h=title('Weighted Chord Length Distribution - X Direction PCA');
set(h,'FontSize',12);

%% Get structure parameters for structure above and below threshold
prmab=prm(logical(showprm),:);
prmbl=prm(logical(~showprm),:);
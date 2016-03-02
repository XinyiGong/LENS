%% Load PC, metadata(prm), stats

%% Mark structure according to threshold and dimension
%  And Plot PCA

%Choose threshold here
threshold(1)=0.1;
threshold(2)=0.1;
threshold(3)=0.1;


showprm=zeros(4,size(stats,2));
for dm=1:3;
    for i=1:size(stats,2)
        if stats(dm,i)>=threshold(dm)
            showprm(dm,i)=1;
        end
    end
end
showprm(4,:)=showprm(1,:)+showprm(2,:)+showprm(3,:);

cmap=hsv(2);
plot3(PC(logical(showprm(4,:)),1),PC(logical(showprm(4,:)),2),PC(logical(showprm(4,:)),3),'kd','MarkerFaceColor',cmap(1,:),'MarkerSize',8);
hold on
plot3(PC(logical(~showprm(4,:)),1),PC(logical(~showprm(4,:)),2),PC(logical(~showprm(4,:)),3),'kd','MarkerFaceColor',cmap(2,:),'MarkerSize',8);
grid on
xlabel('PC 1','FontSize',12)
ylabel('PC 2','FontSize',12)
zlabel('PC 3','FontSize',12)
set(gca,'FontSize',12)
h=title('Weighted Chord Length Distribution PCA');
set(h,'FontSize',12);

%% Get structure parameters for structure above and below threshold
prmab=prm(logical(showprm(4,:)),:);
prmbl=prm(logical(~showprm(4,:)),:);
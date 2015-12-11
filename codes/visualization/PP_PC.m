% PP7list(:,1)=(PP7(:)==5);
% PP7list(:,2)=(PP7(:)==20);
% PP7list(:,3)=(PP7(:)==35);
for i=1:72
fig=figure;
filename=['plot',num2str(i)];
scatter3(PC(showprmo1,1),PC(showprmo1,2),PC(showprmo1,3),20*ones(length(showprmo1),1),'r','filled');
view(5*i,30)
grid on
xlabel('PC 1','FontSize',20)
ylabel('PC 2','FontSize',20)
zlabel('PC 3','FontSize',20)
set(gca,'FontSize',20)
% h=title('Procee Parameter - Principle Component');
% set(h,'FontSize',12);
hold on
scatter3(PC(showprmon,1),PC(showprmon,2),PC(showprmon,3),20*ones(length(showprmon),1),'b','filled');
hold on
scatter3(PC(showprmo2,1),PC(showprmo2,2),PC(showprmo2,3),20*ones(length(showprmo2),1),'g','filled');
print(fig,filename,'-dpng');
end
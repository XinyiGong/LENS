cmap=hsv(2);
plot3(prm(logical(showprm(4,:)),8),prm(logical(showprm(4,:)),3),prm(logical(showprm(4,:)),7),'kd','MarkerFaceColor',cmap(1,:),'MarkerSize',8);
hold on
plot3(prm(logical(~showprm(4,:)),8),prm(logical(~showprm(4,:)),3),prm(logical(~showprm(4,:)),7),'kd','MarkerFaceColor',cmap(2,:),'MarkerSize',8);
grid on
xlabel('Final Step Number','FontSize',12)
ylabel('V','FontSize',12)
zlabel('HAZ','FontSize',12)
set(gca,'FontSize',12)
h=title('Structures in Process Paramter Space');
set(h,'FontSize',12);
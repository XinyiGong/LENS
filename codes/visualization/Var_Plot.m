close all
t=10;
x=[1:t];
y=zeros(1,t);
y(1,1)=Var(1,1);
for i=2:t
    y(1,i)=y(1,i-1)+Var(i,1);
end
% plot(x(1,1:t));
plot(x,100*y); 
ax=gca;
set(ax,'XTick',x)
hold on

grid on
title('PC vs. Accumulated Variance','FontSize',36);
xlabel('PC','FontSize',36)
ylabel('% Accumulated Variance','FontSize',36)
set(gca,'FontSize',36)
axis([1 10 70 100])
hold on
% % % % for i=1:t
text(x(1:3),100*y(1:3),num2str((100*y(1:3))'),'HorizontalAlignment','center','FontSize',36);
% end
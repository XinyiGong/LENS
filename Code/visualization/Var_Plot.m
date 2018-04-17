close all
t=5;
x=[1:t];
y=zeros(1,t);
y(1,1)=Var(1,1);
for i=2:t
    y(1,i)=y(1,i-1)+Var(i,1);
end
yp = round(y,3);
Varp = round(Var,3);


% plot(x(1,1:t));
s1 = plot(x,100*yp); 
ax=gca;
set(ax,'XTick',x)
hold on

%
grid on
title('PC vs. Variance','FontSize',30);
xlabel('PC','FontSize',30)
ylabel('Variance (%)','FontSize',30)
set(gca,'FontSize',30)
axis([0 t+1 0 100])
hold on
% % % % for i=1:t
text(x(1:t),100*yp(1:t),num2str((100*yp(1:t))'),'HorizontalAlignment','center','FontSize',30);
s2 = bar(x,100*Var,'FaceAlpha',0.3);
hold on
text(x(2:t),100*Varp(2:t),num2str((100*Varp(2:t))),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',30);
% end
lgd = legend([s1 s2],'Accumulated Var.','Individual Var.','FontSize');
lgd.FontSize = 30;
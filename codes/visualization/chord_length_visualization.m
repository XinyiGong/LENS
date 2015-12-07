% close all
% % % clear
figure(2)
clc

% % % cd('/Users/Gong/Desktop/chord_length_72');

i=1;
plotend=300;

% % % load(['chordlength_',num2str(i),'.mat']);

colorstring = 'bgrymc';
% % % subplot(1,2,1)
for j=1:3
%     if j==1
%         color='r';
%     elseif j==2
%         color='g';
%     else
%         color='b';
%     end
    h(j)=plot(1:plotend,hist2(1:plotend,j),'Color', colorstring(j));
    hold on;
end

grid on
xlabel('Chord Length','FontSize',12)
ylabel('Frequency','FontSize',12)
% set(legend(h(1:6),'X Direction','Y Direction','Z Direction','X Edge','Y Edge','Z Edge'),'FontSize',12);
set(legend(h(1:3),'X Direction','Y Direction','Z Direction'),'FontSize',12);
% axis([0 300 0 0.09])
title('2')

% % % subplot(1,2,2)
% % % plot(1:plotend,hist(1:plotend,4))
% % % 
% % % grid on
% % % xlabel('Chord Length','FontSize',12)
% % % ylabel('Frequency','FontSize',12)
% % % set(legend('All Directions'),'FontSize',12);


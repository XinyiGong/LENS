% close all
% % % clear
figure()


% % % cd('/Users/Gong/Desktop/chord_length_72');

i=1;
% plotend=900;

% % % load(['chordlength_',num2str(i),'.mat']);

colorstring = 'bgrymc';
% % % subplot(1,2,1)
%     if j==1
%         color='r';
%     elseif j==2
%         color='g';
%     else
%         color='b';
%     end
    h(1)=plot(1:300,GG(432,1:300),'LineWidth',3,'Color', colorstring(1));
    hold on;
    h(2)=plot(1:300,GGbp(432,1:300),'LineWidth',3,'Color', colorstring(2));
    hold on;
   

grid on
xlabel('Chord Length','FontSize',20)
ylabel('Frequency','FontSize',20)
% set(legend(h(1:6),'X Direction','Y Direction','Z Direction','X Edge','Y Edge','Z Edge'),'FontSize',12);
set(legend(h(1:2),'Original','Model+Reconstruction'),'FontSize',20);
% axis([0 300 0 0.09])
% % title('V=2.5 W=60','FontSize',36)
set(gca,'fontsize',20)
axis([0 100 0 0.25])

% % % subplot(1,2,2)
% % % plot(1:plotend,hist(1:plotend,4))
% % % 
% % % grid on
% % % xlabel('Chord Length','FontSize',12)
% % % ylabel('Frequency','FontSize',12)
% % % set(legend('All Directions'),'FontSize',12);


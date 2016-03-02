% close all
% % % clear
figure()
clc

% % % cd('/Users/Gong/Desktop/chord_length_72');

i=1;
plotend=50;

% % % load(['chordlength_',num2str(i),'.mat']);

colorstring = 'bgrmyc';
% % % subplot(1,2,1)

    h(1)=plot(1:plotend,str136(1:plotend,3),'Color', colorstring(1));
    hold on;
    h(2)=plot(1:plotend,str189(1:plotend,3),'Color', colorstring(2));
    hold on;
    h(3)=plot(1:plotend,str82(1:plotend,3),'Color', colorstring(3));
    hold on;
    h(4)=plot(1:plotend,str133(1:plotend,3),'Color', colorstring(4));
    hold on;

grid on
xlabel('Chord Length','FontSize',36)
ylabel('Frequency','FontSize',36)
% set(legend(h(1:6),'X Direction','Y Direction','Z Direction','X Edge','Y Edge','Z Edge'),'FontSize',12);
set(legend(h(1:4),'V=2.5 W=60','V=2.5 W=90','V=15 W=60','V=15 W=90'),'FontSize',36);
% axis([0 300 0 0.09])
title('Z Direction','FontSize',36)
set(gca,'fontsize',36)
axis([0 50 0 0.25])

% % % subplot(1,2,2)
% % % plot(1:plotend,hist(1:plotend,4))
% % % 
% % % grid on
% % % xlabel('Chord Length','FontSize',12)
% % % ylabel('Frequency','FontSize',12)
% % % set(legend('All Directions'),'FontSize',12);


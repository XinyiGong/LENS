close all
% % % clear
clc

% % % cd('/Users/Gong/Desktop/chord_length_72');

i=1;
plotend=100;

% % % load(['chordlength_',num2str(i),'.mat']);


% % % subplot(1,2,1)
for j=1:3
    if j==1
        color='r';
    elseif j==2
        color='g';
    else
        color='b';
    end
    h(j)=plot(1:plotend,hist(1:plotend,j),color);
    hold on;
end

grid on
xlabel('Chord Length','FontSize',12)
ylabel('Frequency','FontSize',12)
set(legend(h(1:3),'X Direction','Y Direction','Z Direction'),'FontSize',12);


% % % subplot(1,2,2)
% % % plot(1:plotend,hist(1:plotend,4))
% % % 
% % % grid on
% % % xlabel('Chord Length','FontSize',12)
% % % ylabel('Frequency','FontSize',12)
% % % set(legend('All Directions'),'FontSize',12);


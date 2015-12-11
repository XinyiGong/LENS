clear
close all
clc
path='/Users/Gong/Documents/LENS/results/Chord_length_distribution/cld_edge_stats';

load([path,'/CLD2_E']);

colorstring = 'kmcbgr';
for i=1:3
    h(i)=plot(edges,N(i,:),'Color',colorstring(i));
    % Label data point here
    
    %text(edges(N(i,:)~=0),N(i,[N(i,:)~=0]),num2str(N(i,[N(i,:)~=0])'),'HorizontalAlignment','center');

    hold on
end

grid on
xlabel('"Edge Chords" Fraction','FontSize',36)
ylabel('Number of Structures','FontSize',36)
set(gca,'FontSize',36)
set(legend(h(1:3),'X Direction','Y Direction','Z Direction'),'FontSize',36);
% title([char(double('X')+i-1),' Direction'],'FontSize',12);
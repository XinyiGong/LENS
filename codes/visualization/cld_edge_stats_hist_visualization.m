clear
close all
clc
path='/Users/Gong/Documents/LENS/results/Chord_length_distribution/cld_edge_stats';

load([path,'/CLD1_E']);

for i=1:3
    figure(i)
    plot(edges,N(i,:));
    grid on
    xlabel('"Edge Chords" Fraction','FontSize',12)
    ylabel('Number of Structures','FontSize',12)
    set(gca,'FontSize',12)
    
    % Label data point here
%     text(edges(N(i,:)~=0),N(i,[N(i,:)~=0]),num2str(N(i,[N(i,:)~=0])'),'HorizontalAlignment','center');
    
    h=title([char(double('X')+i-1),' Direction']);
    set(h,'FontSize',12);
end
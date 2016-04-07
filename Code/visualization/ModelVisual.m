        figure1 = figure;
        axes1 = axes('Parent',figure1,'FontSize',16,'FontName','Times New Roman');
        h(1)=line(reg.yhat,PC(:,1),'Parent',axes1,'Tag','Data','MarkerFaceColor',[1 0 0],...
            'MarkerEdgeColor',[1 0 0],...
            'Marker','o',...
            'LineStyle','none',...
            'Color',[0 0 1]);
        xlabel('Model Prediction','FontSize',20,'FontName','Times New Roman');
        ylabel('Actual Data','FontSize',20,'FontName','Times New Roman');     
        title('Goodness of Fit Scatter Plot','FontSize',20,'FontName','Times New Roman');
        line([min([reg.yhat,PC(:,4)]),max([reg.yhat,PC(:,4)])],...
            [min([reg.yhat,PC(:,4)]),max([reg.yhat,PC(:,4)])],...
            'Parent',axes1,'Tag','Reference Ends','LineWidth',3,'color','black');
        axis tight
        axis square
        grid on
        
        h(2)=line(PCs(:,1),PCp(:,1),'MarkerFaceColor',[0 1 0],...
'MarkerEdgeColor',[0 1 0],...
'Marker','o',...
'LineStyle','none',...
'Color',[0 0 1]);

set(legend(h(1:2),'Training Data','Test Data'),'FontSize',20,'FontName','Times New Roman');

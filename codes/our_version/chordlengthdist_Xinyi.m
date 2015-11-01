function []=chordlengthdist(filename)

load(filename)

class=[1:300]';

chord=0;
chord1x=1;
chord1y=1;
chord1z=1;

histx=[ class zeros(numel(class),1)];
histy=[ class zeros(numel(class),1)];
histz=[ class zeros(numel(class),1)];

stx=1;
sty=1;
stz=1;
x=0;
y=0;
z=0;

%% Obtaining Histogram for X direction

for ndz=1:1
    
    for ndy=1:1
        
        for ndx=1:299 %st marks the starting point of grains that are not part of the periodic boundary
            if BWdata(ndx,ndy,ndz)==0
                if ndx==1
                    chord=1;
                else
                    ++chord;
                end
            else
                
                
                
            end
            
            
            
           %start chord at '0' state with '1' right before
            if BWdata(ndx,ndy,ndz)==0 & BWdata(ndx-1,ndy,ndz)==1
                ++chord
            end
            
            if ndx==299 
                chord=chord+1+chord1x; %we add it here as the other side of the periodic boundary
                histx(class==chord,2)=histx(class==chord,2)+1;
            
            else
                
                if  (ndx,ndy,ndz)==0
                    chord=chord+1;
                
                else        
                    histx(class==chord,2)=histx(class==chord,2)+1;
                    chord=0;
                end
            end
       end
   end
end


% %% Obtaining Histogram for Y direction
% 
% for ndz=1:300
%     
%     for ndx=1:300
%         
%        while y<300
%             if  phase3(ndx,y+1,ndz)==0
%                     chord1y=chord1y+1;
%                     y=y+1;
%                     sty=sty+1;
%                 else        
%                     y=300;        
%             end
%         end
%         
%         for ndy=sty:299
%             
%             if ndy==299 && phase3(ndx,ndy+1,ndz)==0
%                 chord=chord+1+chord1y;
%                 histy(class==chord,2)=histy(class==chord,2)+1;
%             
%             else
%                 
%                 if  phase3(ndx,ndy+1,ndz)==0
%                     chord=chord+1;
%                 
%                 else        
%                     histy(class==chord,2)=histy(class==chord,2)+1;
%                     chord=0;
%                 end
%             end
%         end
%     end
% end
% 
% %% Obtaining Histogram for Z direction
% 
% for ndx=1:300
%     
%     for ndy=1:300
%         while z<300
%             if  phase3(ndx,ndy,z+1)==0
%                     chord1z=chord1z+1;
%                     z=z+1;
%                     sty=sty+1;
%                 else        
%                     z=300;        
%             end
%         end
%         for ndz=stz:299
%             
%             if ndz==299 && phase3(ndx,ndy,ndz+1)==0
%                 chord=chord+1+chord1z;
%                 histz(class==chord,2)=histz(class==chord,2)+1;
%             
%             else
%                 
%                 if  phase3(ndx,ndy,ndz+1)==0
%                     chord=chord+1;
%                 
%                 else        
%                     histz(class==chord,2)=histz(class==chord,2)+1;
%                     chord=0;
%                 end
%             end
%         end
%     end
% end
% 
% histogramx=histx(:,2);
% histogramy=histy(:,2);
% histogramz=histz(:,2);
% histogramtotal=[ histogramx histogramy histogramz];
% histogramavg=mean(histogramtotal,2);
% 
% save(['chl.',filename], 'histogramavg')

% subplot(4,1,1)
% plot(1:300,histogramx)
% subplot(4,1,2)
% plot(1:300,histogramy)
% subplot(4,1,3)
% plot(1:300,histogramz)
% subplot(4,1,3)
% plot(1:300,histogramavg)
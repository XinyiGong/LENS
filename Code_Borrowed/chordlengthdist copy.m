function []=chordlengthdist(filename)

load(filename)

phase3(phase3==2)=0;

class=[1:300]';

chord=1;

histx=[ class zeros(numel(class),1)];
histy=[ class zeros(numel(class),1)];
histz=[ class zeros(numel(class),1)];

for ndz=1:300
    
    for ndy=1:300
        
        for ndx=1:299
            
            if ndx==299 && phase3(ndx+1,ndy,ndz)==0
                chord=chord+1;
                histx(class==chord,2)=histx(class==chord,2)+1;
            
            else
                
                if  phase3(ndx+1,ndy,ndz)==0
                    chord=chord+1;
                
                else        
                    histx(class==chord,2)=histx(class==chord,2)+1;
                    chord=0;
                end
            end
        end
    end
end

for ndz=1:300
    
    for ndx=1:300
        
        for ndy=1:299
            
            if ndx==299 && phase3(ndx,ndy+1,ndz)==0
                chord=chord+1;
                histy(class==chord,2)=histy(class==chord,2)+1;
            
            else
                
                if  phase3(ndx,ndy+1,ndz)==0
                    chord=chord+1;
                
                else        
                    histy(class==chord,2)=histy(class==chord,2)+1;
                    chord=0;
                end
            end
        end
    end
end

for ndx=1:300
    
    for ndy=1:300
        
        for ndz=1:299
            
            if ndz==299 && phase3(ndx,ndy,ndz+1)==0
                chord=chord+1;
                histz(class==chord,2)=histz(class==chord,2)+1;
            
            else
                
                if  phase3(ndx,ndy,ndz+1)==0
                    chord=chord+1;
                
                else        
                    histz(class==chord,2)=histz(class==chord,2)+1;
                    chord=0;
                end
            end
        end
    end
end

histogramx=histx(:,2);
histogramy=histy(:,2);
histogramz=histz(:,2);
histogramtotal=[ histogramx histogramy histogramz];
histogramavg=mean(histogramtotal,2);

save(['chl.',filename], 'histogramavg')

% subplot(4,1,1)
% plot(1:300,histogramx)
% subplot(4,1,2)
% plot(1:300,histogramy)
% subplot(4,1,3)
% plot(1:300,histogramz)
% subplot(4,1,3)
% plot(1:300,histogramavg)
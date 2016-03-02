function []=cld_2phase(filename)

load(filename)

xy_class=[1:300]';
z_class=[1:200]';

chord=0;
chord1x=1;
chord1y=1;
chord1z=1;

histx=[ xy_class zeros(numel(xy_class),1)];
histy=[ xy_class zeros(numel(xy_class),1)];
histz=[ z_class zeros(numel(z_class),1)];

stx=1;
sty=1;
stz=1;
x=0;
y=0;
z=0;

%% Obtaining Histogram for X direction

for ndz=1:300
    
    for ndy=1:300
        
        for ndx=stx:299 %st marks the starting point of grains that are not part of the periodic boundary
            
            if ndx==299
                chord=chord+1+chord1x; %we add it here as the other side of the periodic boundary
                histx(class==chord,2)=histx(class==chord,2)+1;
            
            else
                
                histx(class==chord,2)=histx(class==chord,2)+1;
                chord=0;

            end
       end
   end
end

%% Obtaining Histogram for Y direction

for ndz=1:300
    
    for ndx=1:300
        
        for ndy=sty:299
            
            if ndy==299 
                chord=chord+1+chord1y;
                histy(class==chord,2)=histy(class==chord,2)+1;
            
            end
        end    
    end
end

%% Obtaining Histogram for Z direction

for ndx=1:300
    
    for ndy=1:300
        
        for ndz=stz:299
            
            if ndz==299 
                chord=chord+1+chord1z;
                histz(class==chord,2)=histz(class==chord,2)+1;
            
            end
        end
    end
end

histogramx=histx(:,2);
histogramy=histy(:,2);
histogramz=histz(:,2);
histogramtotal=[ histogramx histogramy histogramz];

histogramavg=mean(histogramtotal,2);


%npixels=sum(histogramavg)-histogramavg(1);
%histogramavg(1)=[];
%histogramavg=histogramavg/npixels;


save(['chl.',filename], 'histogramavg')

% subplot(4,1,1)
% plot(1:300,histogramx)
% subplot(4,1,2)
% plot(1:300,histogramy)
% subplot(4,1,3)
% plot(1:300,histogramz)
% subplot(4,1,3)
% plot(1:300,histogramavg)
f=dir('ising*');
statsize=49*49;
GG=zeros(size(f,1)*29,statsize);
%% 
for ii=1:size(f,1)
    for k = 1:21
        textFilename = [f(ii).name,'\dump_step0_10\dump.ising.', num2str(k-1), '.vti'];
        Qread=readVTI(textFilename, [50 50 1]);
        Q2pt=noob2ptauto(Qread,1);
        GG((ii-1)*29+k,:)=Q2pt(:);
    end
    for j = 4:11       
            textFilename = [f(ii).name,'\dump.ising.', num2str(j-1), '.vti'];
            Qread=readVTI(textFilename, [50 50 1]);
            Q2pt2=noob2ptauto(Qread,1);
            GG((ii-1)*29+j+18,:)=Q2pt2(:);
        %   imagesc(Q2pt);
        
        %   imgFilename = ['2PSisingT075_', num2str(k), '0.png'];
        %   C = colormap;  % Get the figure's colormap.
        %   L = size(C,1);
        % % Scale the matrix to the range of the map.
        %   Gs = round(interp1(linspace(min(Q2pt(:)),max(Q2pt(:)),L),1:L,Q2pt));
        %   H = reshape(C(Gs,:),[size(Gs) 3]); % Make RGB image from scaled.
        %   %figure; imagesc(H);
        
        %   %save 2pt statistics image
        %   imwrite(imresize(H, 10.0, 'nearest'),imgFilename);
        
        %   %save matfile
        %   matFilename = ['T075_QiNP_', num2str(k), '0.mat'];
        %   save(matFilename,'Q2pt');
        
    end
    ii
    
end

%% PCA
[PC,Var] = PCAConstruct(GG,20);

%%
plot(Var)
%%
PC1=PC(:,1);
PC2=PC(:,2);
PC3=PC(:,3);
%%
scatter3(PC1(1:20),PC2(1:20),PC3(1:20),'ro','filled');hold on
scatter3(PC1(21:40),PC2(21:40),PC3(21:40),'ko','filled')
scatter3(PC1(41:60),PC2(41:60),PC3(41:60),'bo','filled')
scatter3(PC1(61:80),PC2(61:80),PC3(61:80),'go','filled')
scatter3(PC1(81:100),PC2(81:100),PC3(81:100),'mo','filled')



%% Function Estimation
%reg = MultiPolyRegress(PC(:,1:2),R,3,'figure')


%%




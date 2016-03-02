
clear all
for i=1:10
    filename=['chl.dump.pin.rod1_2.1.',num2str(i*10),'.mat'];
    load(filename);
    plot(1:100,histogramavg(1:100))
    hold on
end
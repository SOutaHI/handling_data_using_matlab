list = dir('*.csv');
sampling_time = (1/(50e+06));

for n = 1:length(list)
    file_name  = list(n).name;
    data_table = readtable(list(n).name);
    data_row   = data_table(:,4);
    data_array = table2array(data_row);
    
    data_index = data_table(:,1);
    data_index_array = table2array(data_index);
    data_index_array = data_index_array;
    data_time_array = data_index_array*sampling_time;
    
    fig = figure();
    plot(data_time_array, data_array);
    xlabel('time[s]','FontSize',12,'FontWeight','bold');
    ylabel('voltage[V]','FontSize',12,'FontWeight','bold');
    xlim([0 max(data_time_array)]);
    grid on;
    
    file_name_without_expand = strtok(file_name,'.') ;
    file_name_for_saving_fig = append(file_name_without_expand, '.fig');
    savefig(file_name_for_saving_fig);
    close(fig);
    
%     instfreq(data_time_array,data_array)
   % medfreq(data_array,sampling_time)
    %y = fft(data_array);
    
    %f = (0:length(y)-1)*50/length(y);

    %plot(f,abs(y))
    %title('Magnitude')
    
end



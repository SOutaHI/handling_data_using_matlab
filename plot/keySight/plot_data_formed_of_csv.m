list = dir('*.csv');

for n = 1:length(list)
    file_name  = list(n).name;
    data_table = readtable(list(n).name);
    
%     get time
    data_time = data_table(:,1);
    data_time_array = table2array(data_time);
    
%     get value  
    data_row1   = data_table(:,2);
    data_array1 = table2array(data_row1);
    
    data_row2   = data_table(:,3);
    data_array2 = table2array(data_row2);
    
    data_row3   = data_table(:,4);
    data_array3 = table2array(data_row3);
    
%     plot data
    fig = figure();
    plot(data_time_array, data_array1);
    xlabel('time[s]','FontSize',12,'FontWeight','bold');
    ylabel('voltage[V]','FontSize',12,'FontWeight','bold');
%     xlim([0 max(data_time_array)]);
    grid on;
    
    file_name_without_expand = "test1." ;
    file_name_for_saving_fig = append(file_name_without_expand, file_name);
    file_name_for_saving_fig = append(file_name_for_saving_fig, '.fig');
    savefig(file_name_for_saving_fig);
    close(fig);
    
    
    fig = figure();
    plot(data_time_array, data_array2);
    xlabel('time[s]','FontSize',12,'FontWeight','bold');
    ylabel('voltage[V]','FontSize',12,'FontWeight','bold');
%     xlim([0 max(data_time_array)]);
    grid on;
    

    file_name_without_expand = "test2" ;
    file_name_for_saving_fig = append(file_name_without_expand, file_name);
    file_name_for_saving_fig = append(file_name_for_saving_fig, '.fig');
    savefig(file_name_for_saving_fig);
    close(fig);
    
    
    fig = figure();
    plot(data_time_array, data_array3);
    xlabel('time[s]','FontSize',12,'FontWeight','bold');
    ylabel('voltage[V]','FontSize',12,'FontWeight','bold');
    xlim([0 max(data_time_array)]);
    grid on;
    
    file_name_without_expand = "test3" ;
    file_name_for_saving_fig = append(file_name_without_expand, file_name);
    file_name_for_saving_fig = append(file_name_for_saving_fig, '.fig');
    savefig(file_name_for_saving_fig);
    close(fig);
    
    fig = figure();
    plot(data_time_array, data_array1*(1/5));
    hold on;
    plot(data_time_array, data_array2);
    hold on;
    plot(data_time_array, data_array3);
    hold on;
    xlabel('time[s]','FontSize',12,'FontWeight','bold');
    ylabel('voltage[V]','FontSize',12,'FontWeight','bold');
    xlim([min(data_time_array) max(data_time_array)]);
    ylim([-1.5, 1.5]);
    
    grid on;
    
    file_name_without_expand = "test4" ;
    file_name_for_saving_fig = append(file_name_without_expand, file_name);
    file_name_for_saving_fig = append(file_name_for_saving_fig, '.fig');
    savefig(file_name_for_saving_fig);
    close(fig);
    
    
    
    
%     instfreq(data_time_array,data_array)
   % medfreq(data_array,sampling_time)
    %y = fft(data_array);
    
    %f = (0:length(y)-1)*50/length(y);

    %plot(f,abs(y))
    %title('Magnitude')
    
end



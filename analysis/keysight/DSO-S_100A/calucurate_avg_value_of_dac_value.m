% 0.5
file_name = '0v.csv';
calcurate_avg_value(file_name);


file_names = [
"1-5v.csv",
"2v.csv",
"4-5v.csv",
"0-5v.csv",
"1v.csv",
"3-5v.csv",
"4v.csv",
"0v.csv",
"2-5v.csv",
"3v.csv",
"5v.csv"]


for i=1:length(file_names)
    file_name = file_names(i);
    calcurate_avg_value(file_name);
end

%% function
function avg = calcurate_avg_value(file_name)
    table      = readtable(file_name);
    value_row  = table(:,2);
    data_array = table2array(value_row);
    avg        = sum(data_array)/length(data_array);

    disp(file_name);
    disp("avarage value");
    disp(avg);
end


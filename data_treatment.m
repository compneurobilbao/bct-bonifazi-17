addpath('hubmeasurement/');
files = dir('hubmeasurement/*.mat');

matrix_pool = zeros(length(files),2754,2754);

i=1;
for file = files'
    load(file.name);
    
    if i==34
        matrix_pool(i,:,:) = struct_network;
        break
    end
    matrix_pool(i,:,:) = fiber_num;
    i = i+1;
end

mean_matrix = squeeze(mean(matrix_pool,1));

save mean_matrix mean_matrix

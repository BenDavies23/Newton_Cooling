function [t, T] = newton_read(filename)
    
    fid = fopen(filename, "r"); % Opens the file for reading
    
    if fid < 0
        error('File failed to open'); % Checks whether file opens successfully
    end
    
    fgetl(fid);
    
    data = fscanf(fid, '%f, %f\n', [2, Inf]); % Reads the data
   
    fclose(fid); % Closes the file 
    
    % Assign columns to output variables
    t = data(1, :);
    T = data(2, :);
end
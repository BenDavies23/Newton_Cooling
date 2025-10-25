function newton_write(t, T, filename)

    fid = fopen(filename,"w"); % Opens file for writing
    if fid <0
        error('file failed to open') % Checks whether file opens successfully 
    end
    fprintf(fid,'Time (t) , Room temperature(T(t))\n'); % Writes headers for each column
    for i = 1:length(t) 
        fprintf(fid, '%.2f, %.4f\n', t(i), T(i)); % Places values for t and corresponding T value on seperate lines
    end
    fclose(fid);  % Closes the file
end


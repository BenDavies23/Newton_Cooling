% Main script which uses: newton_cool, newton_plot, and newton_write to
% implement Newton's experimental Law of cooling using Euler's method

T0 = 21; % Initial room temperature (degrees C)
T_env = 10; %Outside temperature (degrees C)
alpha = [0.001, 0.0015, 0.002, 0.002, 0.002, 0.002]; %Heat loss coeficcients for each side i (degrees per second)
t_end = 900; % Maximum time limit for simulation (seconds)
dt = 0.1; % Time step (seconds)

[t,T] = newton_cool(T0, T_env, alpha, t_end, dt); % Gets values for t and T using newton_cool

newton_plot(t_end, dt, T0, T_env, alpha); % Plots our values for t and T

filename = 'cooling_data.txt'; % Writes our values in a file
newton_write(t, T, filename)





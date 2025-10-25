function [t,T] = newton_cool(T0, T_env, alpha, t_end, dt)
% inputs:
% T0 = Initial room temperature (degrees C)
% _env = Outside temperature (degrees C)
% alpha = coefficients indicating the rate of heat loss for each side of the
% room (degrees per second)
% t_end = maximum time for the simulation (seconds)
% dt = time step (seconds)

% output:
% Values for t ranging from 0 - t_end with time step of dt
% Values for T corresponding to our t values

% Time vector
t = [0:dt:t_end];

% Preallocate storage for T
T = zeros(1,length(t));

T(1) = T0;

% Euler's step
% T(t + dt) = T(t) - dt*sum(alpha*(T(t) - T_env)))
for i=1:length(t) - 1
    T(i + 1) = T(i) - dt*sum(alpha*(T(i) - T_env));
end
end

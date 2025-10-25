function newton_plot(t_end, dt, T0, T_env, alpha)

[t,T] = newton_cool(T0, T_env, alpha, t_end, dt); % Uses newton_cool function to get data for time(t) and temperature(T)

% Plot
plot(t,T,'LineWidth',2);
xlabel('Time (t)')
ylabel('Temperature (T)')
end
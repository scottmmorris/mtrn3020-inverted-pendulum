% Plotting the results from the Inverted Pendulum Experiment z51654656 MTRN
%3020
load('z5165456.mat')

figure(1); hold on; grid on;
title('Desired, Experimental and Simulated cart positions over time');
ylabel('Cart x position (m)');
xlabel('Time (s)');
CartPositions(1,:)
plot(CartPositions(:, 1), CartPositions(:, 2), 'b');
plot(CartPositions(:, 1), CartPositions(:, 3), 'r');
plot(CartPositions(:, 1), CartPositions(:, 4), 'g');
legend({'Desired', 'Experimental', 'Simulation'}, 'Location', 'southwest');

figure(2); hold on; grid on;
title('Experimental and Simulated pendulum angular positions over time');
ylabel('Pendulum angular position (degrees)');
xlabel('Time (s)');
plot(CartAngles(:, 1), CartAngles(:, 2), 'r');
plot(CartAngles(:, 1), CartAngles(:, 3), 'g');
legend({'Experimental', 'Simulated'}, 'Location', 'southeast');


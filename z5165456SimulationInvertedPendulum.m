% Simulation script for Inverted Pendulum Experiemtn z5165456

options = odeset('RelTol', 1e-5, 'AbsTol', [1e-5 1e-5 1e-5 1e-5 1e-5]);
[t,x] = ode45(@z5165456PendulumModel, [0:0.1:20], [2*pi/180 0 0 0 0], options);
figure(1); hold on;
plot(t,x(:,1)*180.0/pi, 'b');
xlabel('time (s)');
ylabel('pendulum angle (degrees)');
figure(2); hold on;
xlabel('time (s)');
ylabel('cart position (cm)');
plot(t, x(:,3)*100, 'r');
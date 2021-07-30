% Function to model the Inverted Pendulum system experiment z51654
function dx = z5165456PendulumModel(t, x)
    M = 2.00; % kg
    m = 0.1; % kg
    L = 0.5; % m
    g = 9.81; % m/s^2
    
    SetPosition = 0.1; % m

    A = [0 1 0 0; (M+m)*g/M/L 0 0 0; 0 0 0 1; -m*g/M 0 0 0];
    B = [0; -1/M/L; 0; 1/M];
    C = [0 0 1 0];
    Ai = [A [0; 0; 0; 0;]; -C 0];
    Bi = [B; 0];
    p = [-1.25 + 1j * 5.0, -1.25 - 1j * 5.0, -4.5, -3.5, -3.0]; 
    K = place(Ai, Bi, p);
    % K = z5165456(A, B);
    % u = -K*x;
    % dx(1:4, 1) = A*x(1:4, 1) - B * K(1:4) * x(1:4) - B * K(5) * x(5, 1);
    % dx(5, 1) = SetPosition - x(3, 1);
    dx = Ai * x - Bi * K * x + [0; 0; 0; 0; 1] * SetPosition;
end


function K = z5165456(Ai,Bi)

    OS = 5.500975427; % percentage
    Ts = 1.118917967; % seconds
    Fs_1 = 2.028496811;
    Fs_2 = 2.134038;

    zeta = (-log(OS/100))/(sqrt(pi^2 + (log(OS/100))^2));

    wn = (-log(0.02*sqrt(1 - zeta^2)))/(Ts*zeta);

    wd = wn*sqrt(1 - zeta^2);

    sigma = zeta*wn;

    % Calculate desired poles of the system
    p1 = -sigma + 1j*wd;
    p2 = -sigma - 1j*wd;
    p3 = -sigma * Fs_1;
    p4 = -sigma * Fs_2;
    p5 = -0.1;
    
    p=[p1, p2, p3, p4, p5];
    K = place(Ai, Bi, p);

return


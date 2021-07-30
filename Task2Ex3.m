num = 1; % For negative K
den = [1 0 -20.601];
rlocus(num, den);

numc = 12.904 * [1 -4.54];
denc = [1 2.54];

[Ac, Bc, Cc, Dc] = tf2ss(numc, denc)

dx = Ac * x + Bc * u;
u = Cc * x + Dc;

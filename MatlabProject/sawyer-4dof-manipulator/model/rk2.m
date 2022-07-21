function dx = rk2(x, u1, T,M,C,G)
k1 = plant(x, u1,M,C,G)*T;
k2 = plant(x+k1*0.5,u1,M,C,G)*T;
k3 = plant(x+k2*0.5,u1,M,C,G)*T;
k4 = plant(x+k3,u1,M,C,G)*T;
dx = x+((k1+k4)/6 + (k2+k3)/3);

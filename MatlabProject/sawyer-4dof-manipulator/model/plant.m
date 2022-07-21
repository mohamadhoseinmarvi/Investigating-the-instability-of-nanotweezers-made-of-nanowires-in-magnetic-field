function dxdt = plant(q, u1,M,C,G)

ddot = inv(M)*(-C*[q(5);q(6);q(7);q(8)]-G'+u1);
dxdt = [q(5);q(6);q(7);q(8);ddot(1);ddot(2);ddot(3);ddot(4)];

end

function zPrim  = rocketEquation(t,z)

c = 0.3;
g = 9.82;
km = 2000;

%massa = 20
%bransle = 10
%t = 5
[m,dm] = massaFunk(t);
[u_x, u_y] = styrningsFunk(t);

dz = [z(2);
      (-c/m)*sqrt(z(2)^2+z(4)^2)*z(2)+(dm/m)*u_x;
      z(4);
      (-c/m)*sqrt(z(2)^2+z(4)^2)*z(4)+(dm/m)*u_y-g];
zPrim = dz;

end
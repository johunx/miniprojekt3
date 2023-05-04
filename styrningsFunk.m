function [u_x, u_y] = styrningsFunk(t)
    fart = 2000;

    u_x = fart * cos(vinkel(t));
    u_y = fart * sin(vinkel(t));
end
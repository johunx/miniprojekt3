function alpha = vinkel(t)

if t < 5
    alpha = pi/2;
elseif t < 8
    alpha = 5*pi/4;
elseif t < 13
    alpha = 3*pi/2;
elseif t < 17
    alpha = -pi;
elseif t < 20
    alpha = 3*pi/4;
elseif t < 21.5
    alpha = -pi/2;
elseif t < 25 
    alpha = 0;
else 
    alpha = pi;
end
end
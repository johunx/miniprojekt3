function alpha = vinkel(t)

if t < 5
    alpha = pi/2;
elseif t < 8
    alpha = 5*pi/4;
elseif t < 13
    alpha = 3*pi/2;
elseif t < 17
    alpha = 7*pi/4;
elseif t < 26
    alpha = 3*pi/2;
elseif t < 33
    alpha = pi;
else 
    alpha = 5*pi/4;
end
end
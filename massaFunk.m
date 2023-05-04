[m, dm] = massaFunk(t);
m = 20;

if t >= 0 && t <=5
m = 20;
dm = 0;
else if t >=5 && t < 55
   m=  20-0.2*(t-5);
   dm = -0.2;
else
m = 10;
dm = 0;
end
end




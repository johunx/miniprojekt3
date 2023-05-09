function dy = funktion(t,ybv)

dy = [ybv(2);
    ybv(3);
    ybv(3)-3*ybv(1)*ybv(2)-t*ybv(1);

]
end
function f=stavovaRovnice(z)
    x1 = z(1);
    x2 = z(2);
    x3 = z(3);
    x4 = z(4);
    
    
    m1 = 5; %kg
    m2 = 2; %kg
    a = 0.5; %m
    b = 0.75; %m
    c = 1.25; %m
    d = 1; %m
    k = 5.8*100; %N/m
    kt = 1.1*100; %Nm/rad
    b1 = 6.1; %Ns
    b2 = 8.8; %Ns
    g = 9.81; %m/s2

    phi10 = deg2rad(35); %rad
    dphi10 = 0; %rad/s
    phi20 = 0; %rad
    dphi20 = 0; %rad/s

    Mt = 0; %Nm
    %dopoètené hodnoty
    G1 = m1*g; %kgm/s2°
    G2 = m2*g; %kgm/s2
    I1 = m1*b^2; %kg*m2
    I2 = m2*c^2; %kg*m2

    x10 = phi10; %rad
    x20 = dphi10; %rad/s
    x30 = phi20; %rad
    x40 = dphi20; %rad/s
    x0 = [x10,x20,x30,x40];

    deltax = d-a*(sin(x1)-sin(x3));
    deltay = a*(cos(x3)-cos(x1));
    DELTAl = d-sqrt(deltax^2+deltay^2);
    Fp =k*DELTAl;
    phip = atan(deltay/deltax);

    
    
    f(1) = x2;
    f(2) =(-x1*kt -b1*x2-Fp*cos(phip)*a*cos(x1)+G1*b*sin(x1)-Mt)/I1;
    f(3) =x4;
    f(4) =(-b2*x4 +Fp*cos(phip)*a*cos(x3)+G2*c*sin(x3))/I2;
end
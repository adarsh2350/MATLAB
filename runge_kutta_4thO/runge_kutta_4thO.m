f=input('Enter function:');
x0=input('Enter x0: ');
y0=input('Enter y0: ');
h=input('Enter h: ');
X=input('Enter required X: ');
x=x0;
while x<X
    x=x+h;
    k1=h*f(x0,y0);
    k2=h*f(x0+(h/2),y0+(k1/2));
    k3=h*f(x0+(h/2),y0+(k2/2));
    k4=h*f(x0+h,y0+k3);
    K=(1/6)*(k1+k4 + 2*(k2+k3));
    y=y0 + K;
    Y=y;
    y0=y;
    x0=x;
end
Y

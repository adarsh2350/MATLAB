f=input('Enter function:');
x0=input('Enter initial x: ');
y0=input('Enter initial y: ');
h=input('Enter h: ');
X=input('Enter required x: ');
x=x0;
while x<X
    x=x+h;
    k1=h*f(x0,y0);
    k2=h*f(x0+h,y0+k1);
    y=y0 + (1/2)*(k1+k2);
    Y=y;
    y0=y;
    x0=x;
end
Y

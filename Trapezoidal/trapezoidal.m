function A=trapezoidal(f,h,a,b)
    I=h/2;
    sum=f(a)+f(b);
    a=a+h;
    while a<b
        sum=sum+(2*f(a));
        a=a+h;
    end
    A=I*sum;
end


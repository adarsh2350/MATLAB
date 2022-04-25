f=input('Enter function: ');
h=input('Enter h: ');
a=input('Enter a: ');
b=input('Enter b: ');
I=h/2;
sum=f(a)+f(b);
a=a+h;
while a<b
    sum=sum+(2*f(a));
    a=a+h;
end
Ans=I*sum

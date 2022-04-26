f=input('Enter function :');
n=input('Enter n :');
a=input('Enter a :');
b=input('Enter b :');
X=zeros(n+1);
h=(b-a)/n;
for i=1:n+1
    X(i)=f(a);
    a=a+h;
end
sum=X(1)+X(n+1);
for i=2:n
    if rem(i-1,3)==0
        sum=sum+(2*X(i));
    else
        sum=sum+(3*X(i));
    end 
end
Ans=((3*h)/8)*sum

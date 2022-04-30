f=input('Enter function :');
n=input('Enter no. of iterations :');
a=input('Enter a :');
b=input('Enter b :');
X=zeros(n,n);
for i=1:n
    h=b-a;
    h=h/(2.^(i-1));
    X(i,1)=trapezoidal(f,h,a,b);
end
for i=2:n
    for j=1:n-i+1
        X(j,i)=(((4^(i-1))*X(j+1,i-1))-(X(j,i-1)))/(4^(i-1) - 1);
    end
end
A=X
Ans=X(1,n)

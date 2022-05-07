f=input('Enter your function: ');
n=input('Enter no. of iteration n: ');
result=zeros(n,n);
a=input('enter your left boundary a: ');
b=input('Enter your right boundary b: ');
h=b-a;
e=input('Enter e :');
final=0;
for i=0:n-1
    k=h/2^(i);
    result(i+1,1)=trap(f,a,b,k);
end

for i=2:n
    
    for j=1:n-i+1
        result(j,i)=(((4^(i-1))*result(j+1,i-1))-(result(j,i-1)))/(4^(i-1) - 1);
        if (abs((result(j,i)-result(j,i-1))/result(j,i))<=e && j==1)
            final=result(j,i);
            break;
           
        end
            
    end
    if final ~= 0
        break;
    end
end


if final ~=0
   answer=final;
else
   answer=result(1,n);
end
result

fprintf('Integration by romberg method gives %d\n', answer);






function t= trap(f,a,b,h)
t=f(a)+f(b);
for i=a+h:h:b-h
    t=t+2*f(i);
end
t=t*h/2;
end

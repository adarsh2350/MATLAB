%Enter boundary conditions
T1=input('Enter T1: ');
T2=input('Enter T2: ');
T3=input('Enter T3: ');
T4=input('Enter T4: ');
l=input('Enter overrelaxation value: ');

%Enter dimensions of the plate
L=input('Enter length: ');
W=input('Enter width: ');
a=input('Enter a: ');
b=input('Enter b: ');
Dx=L/(b+1);
Dy=W/(a+1);
n=input('Enter no. of iterations: ');

X=zeros(a+2,b+2);
for i=2:a+1
    X(i,1)=T1;
    X(i,b+2)=T3;
end    
for i=2:b+1
    X(1,i)=T4;
    X(a+2,i)=T2;
end

for k=1:n
    for i=a+1:-1:2
        for j=2:b+1
            O=X(i,j);
            X(i,j)=((X(i+1,j)+X(i-1,j))/((Dy)^2)+(X(i,j+1)+X(i,j-1)))/((Dx)^2);
            X(i,j)=X(i,j)/(2/((Dx)^2) + 2/((Dy)^2));
            X(i,j)=(l*X(i,j)) + (1-l)*O;
        end
    end
end  
X

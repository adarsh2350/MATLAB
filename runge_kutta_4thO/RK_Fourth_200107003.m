%%RK 4th Order
function [Y] = RK_Fourth_200107003(fxy, step, a, b, yi)

format shortG;

n=(b-a)/step+1;
result=zeros(n,1);

xi=a;

Y=zeros(n,1);
%fprintf('%d is the final answer from Rk 4th order method\n',Y(n))


for i=1:n-1
    Y(i)=yi;
    result(i)=fxy(xi,yi);
    K_1=result(i);
    K_2=fxy(xi+step/2,yi+K_1/2);
    K_3=fxy(xi+step/2,yi+K_2/2);
    K_4=fxy(xi+step,yi+K_3);
    Y(i+1)=yi+(1/6)*(K_1+2*K_2+2*K_3+K_4)*step;
    xi=xi+step;
    yi=Y(i+1);
end
    

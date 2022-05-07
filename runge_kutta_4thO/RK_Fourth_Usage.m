format shortG;

fxy=input('Enter your function: ');
step=input('Enter Step size: ');
a=input('Enter left boundary: ');
b=input('Enter right boundary: ');
yi=input('Enter intial condtion y0: ');

[Y] = RK_Fourth_200107003(fxy, step, a, b, yi)
fprintf('the final answer from Rk 4th order method is');
disp(Y(end));

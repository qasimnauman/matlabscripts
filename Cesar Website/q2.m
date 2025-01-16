f = @(x) exp(x) - 3*x^2;
df = @(x) exp(x) - 6*x;

x0 = 0.5;
tol = 1e-6;       
max_iter = 5;
x1=0;

for i = 1:max_iter
    x1 = x0 - (f(x0) / df(x0));
    
    disp(['Iteration : ',num2str(i),': x= ',num2str(x1)])
    
    if abs(x1 - x0) < tol
        break;
    end
    
    x0 = x1;
end
root=x1;
disp(['Approximate Root (Newton-Raphson): ', root]);
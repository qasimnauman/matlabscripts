g = @(x) (x^3-2)/3;

x0=1.5;
tol=1e-6;
max_iter=100;
iter=0;

for i = 1:max_iter
    iter=iter+1;
    x1=g(x0);
    
    disp(['Iteration', num2str(iter),':x= ',num2str(x1)]);
    
    if abs(x1-x0) < tol
        break;
    end
    
    x0=x1;
end

root = x1;
disp(['Final root (Fixed point iteration): ',num2str(root)]);
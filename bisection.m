f = @(x) x^3 - x - 2;

a = 1;
b = 2;
tol = 1e-6;
iteration = 0;

if f(a) * f(b) >= 0
    disp('f(a) and f(b) must have opposite signs');
else
    while (b-a) / 2 > tol
        iteration = iteration + 1;
        c = (a+b)/2;
        disp(['Iteration ', num2str(iteration), ': c = ', num2str(c)]);
        if f(c) == 0
            break;
        elseif f(a) * f(c) < 0
            b=c;
        else
            a=c;
        end
    end
end

root = (a+b)/2;
disp(['Final Root (Bisection method): ', num2str(root)]);
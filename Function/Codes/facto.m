n = input("Enter your number : ");

function factorial = fact(n)
    if n < 0
        error('Invalid number');
    elseif n == 0 || n == 1
        factorial = 1;
    else
        factorial = n * fact(n - 1); 
    end
end

disp(['Factorial of ', num2str(n), ' is (Recursive): ', num2str(fact(n))]);

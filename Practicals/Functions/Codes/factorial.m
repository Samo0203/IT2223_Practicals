n=input("Enter your number : ");

fact=1;

for i=1:n
    fact=fact*i;
end
disp(['Factorial of ', num2str(n), ' is: ', num2str(fact)]);
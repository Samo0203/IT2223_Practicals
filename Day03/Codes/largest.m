%Get 3 numbers from user and find the largest

n1=input("Enter your num 1: ");
n2=input("Enter your num 2: ");
n3=input("Enter your num 3: ");


if(n1>n2 && n1>n3)
    disp("Largest is "+n1)
elseif(n2>n1 && n2>n3)
    disp("Largest is "+n2)
else
    disp("Largest is "+n3)
end
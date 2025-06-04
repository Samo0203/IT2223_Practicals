n = input("Enter your number: ");

function f = iterative_fact(n)
    f = 1;
    for i = 1:n
        f = f * i;
    end
end

function f = recursive_fact(n)
    if n < 0
        error('Invalid number');
    elseif n == 0 || n == 1
        f = 1;
    else
        f = n * recursive_fact(n - 1);
    end
end


tic;
iterative_result = iterative_fact(n);
iterative_time = toc;


tic;
recursive_result = recursive_fact(n);
recursive_time = toc;


disp(['Iterative Factorial of ', num2str(n), ': ', num2str(iterative_result)]);
disp(['Time taken (Iterative): ', num2str(iterative_time), ' seconds']);

disp(['Recursive Factorial of ', num2str(n), ': ', num2str(recursive_result)]);
disp(['Time taken (Recursive): ', num2str(recursive_time), ' seconds']);


if iterative_time < recursive_time
    disp('Iterative method is more efficient.');
elseif recursive_time < iterative_time
    disp('Recursive method is more efficient.');
else
    disp('Both methods are equally efficient.');
end

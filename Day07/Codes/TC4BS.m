%arr = sort(rand(1,1000));  
%target = arr(randi(1000));  

arr = 1:1000;  
target = 50;  
found = false;
low = 1;
high = length(arr);
index = -1;  
tic;  

while low <= high
    mid = floor((low + high) / 2); 
    if arr(mid) == target
        found = true;
        index = mid;  
        break;
    elseif arr(mid) < target
        low = mid + 1;  
    else
        high = mid - 1;  
    end
end

elapsedTime = toc;  

if found
    fprintf("Target element is found at index: %d \n", index);
else
    fprintf("Target element is not found \n");
end

fprintf("Elapsed time: %f seconds\n", elapsedTime);

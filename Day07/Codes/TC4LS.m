arr = 1:1000;  %arr = sort(rand(1,1000));  
               %target = arr(randi(1000)); 
target = 50;  
found = false;
index = -1;  

tic; 

for i = 1:length(arr)
    %disp(arr(i));
    if arr(i) == target
        found = true;
        index = i;  
        break;
    end
end

elapsedTime = toc;  

if found
    fprintf("Target element is found at index: %d \n", index);
else
    fprintf("Target element is not found \n");
end

fprintf("Elapsed time: %f seconds\n", elapsedTime);

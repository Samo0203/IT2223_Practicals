marks = zeros(1, 5);
grades = cell(1, 5);

for i = 1:5
    marks(i) = input(['Enter the marks ' num2str(i) '(Out of 100): ']);

    if marks(i)>= 90
        grades{i} = 'A';
    elseif marks(i)>= 80
        grades{i} = 'B';
    elseif marks(i)>= 70
        grades{i} = 'C';
    elseif marks(i)>= 60
        grades{i} = 'D';
    else
        grades{i} = 'F';
    end
    fprintf('Students grades is %s.\n', grades{i});
end

while true
    fprintf('\nMenu\n');
    fprintf('\n1 -  Plot the marks using a bar chart\n');
    fprintf('\n2 -  Display the average of the marks\n');
    fprintf('\n3 - Exit \n');

    ch = input('Select the option (1- 3) : ');

    switch ch
        case 1
            figure;
            bar(marks);
            title('Students Marks');
            xlabel('Student');
            ylabel('Marks');
            set(gca, 'XTickLabel', {'student 1', 'student 2', 'student 3', 'student 4', 'student 5', });
            grid on;

        case 2
            avg = mean(marks);
            fprintf('The average marks is %.2f\n',avg)
        
        case 3
            fprintf('Thank you for using application')
            break;
        otherwise
            disp('Invalid');
    end
end

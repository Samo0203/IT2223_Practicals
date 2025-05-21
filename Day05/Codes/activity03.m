num_voters = input('Enter total number of voters: ');

votes = zeros(1, 4);

for i = 1:num_voters
    fprintf('\nVoting Menu:\n');
    fprintf('1. Candidate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');
    
    choice = input('Enter your choice (1-4): ');

switch choice
        case {1, 2, 3, 4}
            votes(choice) = votes(choice) + 1;
        otherwise
            fprintf('Invalid vote! Vote not counted.\n');
    end
end

fprintf('\nVote counts:\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));

[max_votes, winner_index] = max(votes);
if sum(votes == max_votes) > 1
    fprintf('It is a tie!\n');
else
    fprintf('Winner: Candidate %c\n', 'A' + winner_index - 1);
end

while true
    fprintf('\nResult Visualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot\n');
    fprintf('4. Exit\n');
    
    vis_choice = input('Enter your choice: ');
    
    switch vis_choice
        case 1
            bar(votes);
            title('Votes Bar Chart');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
            
        case 2
            pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Votes Pie Chart');
            
        case 3
            scatter(rand(1, num_voters) * 4, randi([1, max_votes], 1, num_voters), 'filled');
            title('Creative Scatter Plot of Votes');
            xlabel('Candidate Index');
            ylabel('Votes Received');
            grid on;
            
        case 4
            fprintf('Exiting the menu.\n');
            break;
            
        otherwise
            fprintf('Invalid choice.\n');
    end
end

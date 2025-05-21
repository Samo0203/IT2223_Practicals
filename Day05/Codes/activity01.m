balance = 1000;

while true
    fprintf('\nATM Menu\n');
    fprintf('\n1 - Deposit\n');
    fprintf('\n2 - Withdraw\n');
    fprintf('\n3 - Balance Inquiry \n');
    fprintf('\n4 - Exit \n');

    choice = input('Enter the number (1- 4) : ');

    switch choice
        case 1
            deposite = input('Enter the deposit amount : ');
            if deposite>0
                fprintf('Successfully deposited %.2f\n',deposite)
                balance = balance+ deposite;
                fprintf('Your new balance is %.2f\n',balance)
            else
                fprintf('Diposite amount is invalid')
            end
        case 2
            Withdraw = input('Enter the Withdraw amount : ');
            if Withdraw<=balance
                if Withdraw>0
                    fprintf('Successfully withdrawed %.2f\n',Withdraw)
                    balance = balance- Withdraw;
                    fprintf('Your new balance is %.2f\n',balance)
                else
                    fprintf('Withdraw amount is invalid')
                end
            else
                fprintf(' Sufficient balance not available')
            end
        case 3
           fprintf('Your current balance is %.2f\n',balance)
        case 4
            fprintf('Thank you for using ATM')
            break;
        otherwise
            disp('Invalid');
    end
end
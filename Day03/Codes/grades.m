% Get a marks from user and print the grade
% marks>=90 A+
% marks>=80 A
% marks>=70 B
% marks>=60 C
% marks>=50 D
% else      F

m=input("Enter your marks: ");

if(m<0 || m>100)
     disp('Invalid')
elseif(m>=90)
    disp('Your grade is A+')

elseif(m>=80)
     disp('Your grade is A')

elseif(m>=70)
     disp('Your grade is B')

elseif(m>=60)
     disp('Your grade is C')

elseif(m>=50)
     disp('Your grade is D')

else
    disp('Your grade is F')
end
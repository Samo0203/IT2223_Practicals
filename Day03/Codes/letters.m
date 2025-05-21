%get character from a user and check whether it is a vowel or consonent

c=input("Enter character: ",'s');
disp('Your letter is: '+c)

if(c<65)
    disp('Invalid')
elseif(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
    disp('Your letter is a vowel')
else
    disp('Your letter is a consonent')
end
%{ 
Jung Kim
Homework 4 Exercise 1
04.05.2015
Count to 10 game
%}

clear
clc
UserIn = 0;
playerone = 0;
playertwo = 0;
 % start variables with 0
 
 while  (UserIn<10)
     disp('Player 1')
     playerone = input('Enter 1 or 2: ');
     %player one statement
     if (playerone~=1)&&(playerone~=2)
         disp('Incorrect input')
         disp('Player 1')
         playerone = input('Enter 1 or 2: ');
         UserIn = playerone + UserIn;
         %when player enters other than 1 or 2, ask again
     else
         UserIn = playerone + UserIn;
         if(UserIn >9);
             fprintf('\n\n\n Player 1 Wins!!!\n');
             break
             % if player one wins, stop the loop
         end
     end
     if (UserIn<10) ;
         disp('Player 2')
         playertwo = input('Enter 1 or 2: ');
         UserIn = UserIn + playertwo;
         %if player one does not reach 10, player 2's turn
     elseif ((playertwo~=1)&&(playertwo~=2))
         disp('Incorrect input')
         disp('Player 2')
         playertwo = input('Enter 1 or 2: ');
         UserIn = UserIn + playertwo;
     end
     if UserIn > 9;
         fprintf('\n\n\n Player 2 Wins!!!\n');
     end
 end


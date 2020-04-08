system ("cls")

step , turn , max_turn = 0 , 0 , 100

while step != 10
    max_turn.times {
        turn +=1
        puts "TURN: #{turn}"
        roll = rand(1..6)    
        puts roll
        if roll == 1 
            puts "-1 Step :( Bad You are now ON STEP #{step}"
            step -=1
        end
        if roll == 2  || roll == 3 || roll == 4
            puts "nothing happen you stay ON STEP #{step}"
        end
        if roll == 5  || roll == 6
            step +=1
            puts "+1 Step !!! Nice you are now ON STEP #{step}"
        end
        if step == 10
            puts "You win the game ON STEP #{step} ! CONGRATULATION !!!"
            break
        end
        puts "+"*50 
        } 
    if turn == max_turn 
        puts "You are a Fucking Looser !"
    end
    break
end
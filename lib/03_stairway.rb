system ("cls")

n_step , step , turn , max_turn , tsleep , multi = 20, 0 , 0 , 100 , 0.05 , 5

while step != n_step
    max_turn.times {
        system ("cls")
        turn +=1
        puts "TURN: #{turn}"
        roll = rand(1..6)    
        puts "Rolldice: #{roll}"
        if roll == 1 
            puts "-1 Step :( Bad "
            puts "STEP : #{step}/#{n_step} "
            if step != 0
                step -=1
            end
        end
        if roll == 2  || roll == 3 || roll == 4
            puts "nothing happen you stay "
            puts "STEP : #{step}/#{n_step} "
        end
        if roll == 5  || roll == 6
            step +=1
            puts "+1 Step !!! Nice you are now "
            puts "STEP : #{step}/#{n_step} "
        end
        if step == n_step
            puts "You win the game !! you reach STEP #{step}/#{n_step}  ! CONGRATULATION !!!"
            puts "|" + "-" * ((step*multi)-2) + "|"
            puts "+"*(n_step*multi) 
            break
        end
        if step != 0
            puts "|"+"-"*((step*multi)-2)+"|"
            puts "+"*(n_step*multi) 
            sleep(tsleep)
        end
        } 
    if turn == max_turn 
        puts "You are a Fucking Looser ! you only reach STEP #{step}/#{n_step}  :( LOOSER !"
    end
    break
end



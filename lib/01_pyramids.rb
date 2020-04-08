def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "

    n_etage = gets.chomp.to_i
    puts n_etage
    hashtag = "#"
    space =  " "
    x = 0
    while x != n_etage
        #puts x
        puts space*(n_etage-(x+1)) + hashtag*(x+1)
        x+=1
    end
end

def full_pyramid 
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "

    n_etage = gets.chomp.to_i
    puts n_etage
    hashtag = "#"
    space =  " "
    x = 0
    while x != n_etage
        #puts x
        puts (space*(n_etage-(x+1))) + (hashtag*(x+1))+ (hashtag*(x))
        x+=1
    end
end

def wtf_pyramid 
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print "> "

    n_etage = gets.chomp.to_i
    if n_etage.odd?
        puts n_etage
        hashtag = "#"
        space =  " "
        list = []
        ((n_etage/2)+1).times do |i|
            #puts xi
            list << (space*(n_etage-(i+1))) + (hashtag*(i+1))+ (hashtag*(i))
            i+=1
            #puts "I= #{i}"
        end

        puts list
        newlist = list.shift(n_etage/2)
        puts newlist.reverse
    end 
    if n_etage.even?
        puts "Un nombre pair uniquement...Fin du programme"
    end
end


#half_pyramid
#full_pyramid

wtf_pyramid
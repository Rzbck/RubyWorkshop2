def say_hello(first_name)
    return puts "Bonjour #{first_name} !"
end
def first_name
    puts "Quel est ton prénom ?"
    print "> "
    first_name = gets.chomp
    return first_name
end
def perform
    say_hello(first_name)
end
perform
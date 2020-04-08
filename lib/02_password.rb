def line(n)
  puts "-_"*((n.length/2)+1)
  puts(n)
  
end

def signup
  puts "\n"
  puts "Signup: "
  question = "Enter a choosen Password"
  line(question)
  print ">  "
  mdp = gets.chomp
  sentence = "your password is #{mdp}"
  line(sentence)
  return mdp
end

def login
  mdp = signup
  input = "" #on initialise la variable sur laquelle on va poser notre condition de boucle
  while input != mdp 
    enterpsw = "Enter The Password"
    line(enterpsw)
    print ">  "
    input = gets.chomp
    wrong = "!!! Wrong Password !!! "
    line(wrong)
  end
  puts "Password Validate"
  puts "Edward Snowden is now happy"
end

def welcome_screen
  welcome = "Welcome to the Secret Zone" 
  line(welcome)
  title = "Here we have some secret Email/Text/Audio file about conversation betwenn CIA and Spongebob"
  line(title)
  ending = "END"
  line(ending)
end


def perform
  login
  welcome_screen
end

perform
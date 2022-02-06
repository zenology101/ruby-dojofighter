#THE GAME
##CHARACTER
# welcome player to game and ask for their name
# =>  use `gets` to get players name in variable


# create new fighter ```player = Fighter.new(name, 0,0,0, 10)```
# =>  all their stats start at 0 except life which is 10 *


# create their opponent ```Akuma = Fighter.new("Akuma", 4,4,4,10)```

# put a prompt telling the story and explaining the game
require "./fighter.rb"
puts "Welcome to Dojo Fighter! What is your |name|?"
name = gets

puts "Do you want to |fight| or |run|?"
Player = Fighter.new(name, 0, 0, 8, 10)
Akuma = Fighter.new("Akuma", 4, 4, 4, 10)

input = gets.chomp #chomp trims whitespace

if input == "fight"
    puts "You are fighting!"
elsif input == "run"
    puts "You are running!"
end

# name
# => string : has getter no setter

# defense
# => number: has getter and setter

# strength
# => number : has getter and setter

# luck
# => number : has getter and setter

# life
# => number : has getter and setter

#❗ *getters* are methods to get a value

#❗ *setters* are methods to alter a value

puts "#{Player.name} and #{Akuma.name} will fight!"

##TRAINING LOOP
# create a while look that will loop `10` times
i = 1
while i <= 10

# => prompts will pause the loop and wait for the user to input a choice
    # in the while loop ask the player how they'd like to train that week
    # based on their choice invoke the right dojo function to train the player
puts "How do you want to train? Choose: |lift_weights|, |endurance_training|, or |toss_a_lucky_coin|."
    input = gets.chomp
    if input == "lift_weights"
        Dojo.lift_weights(Player)
    elsif input == "endurance_training"
        Dojo.endurance_training(Player)
    else input == "toss_a_lucky_coin"
        Dojo.coin_in_fountain(Player)
    end  
        i += 1
end

# after the previous while loop create prompt explaining the big battle has arrived
puts "Time to Fight!"

##THE BATTLE
# create an infinite loop
# have the player and their opponent take turns attacking each other
while true 
Player.attack(Akuma)
Akuma.attack(Player)

    if Akuma.life <= 0
      puts "#{Player.name} wins!" 
      break
    end

    puts "Akuma life = #{Akuma.life}"
    puts "#{Player.name} life = #{Player.life}"
# at the end of each loop check the life of both fighters
    if Player.life <= 0 
        puts "#{Akuma.name} wins!"
        break
    end

    puts "Akuma life = #{Akuma.life}"
    puts "#{Player.name} life = #{Player.life}"

# if one is at 0 or below, break the loop and declare the survivor the winner
    if Player.life || Akuma.life <= 0
      puts "#{Player.name} wins!"
    elsif 
      puts "#{Akuma.name} wins!"
    end   
end
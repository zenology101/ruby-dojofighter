##FIGHTER CLASS
class Fighter
    attr_reader :name
    attr_accessor :defense, :strength, :luck, :life

    def initialize (name, defense, strength, luck, life)
        @name = name
        @defense = defense
        @strength = strength
        @luck = luck
        @life = life
    end

    def attack(opponent)
        damage = @strength - opponent.defense
        if damage <= 0
            puts "#{name} could not do damage to #{opponent.name}"
        elsif
            opponent.life = opponent.life - damage
            puts "#{opponent.name} took #{damage} damage now has #{opponent.life} life left"
        end 
    end
end

#DOJO CLASS

# lift_weights(fighter)
# => takes in fighter and adds 1 to strength

# endurance_training(fighter)
# => takes in fighter and adds 1 to defense

# coin_in_fountain(fighter)
# => takes in fighter and adds 1 to strength
class Dojo
    def self.lift_weights(fighter)
        fighter.strength += 1
        puts "#{fighter.name} strength increased by 1"
    end
    def self.endurance_training(fighter)
        fighter.defense += 1
        puts "#{fighter.name} defense increated by 1"
    end
    def self.coin_in_fountain(fighter)
        fighter.life += 1
        puts "#{fighter.name} luck increated by 1"
    end
end
require_relative 'classes/dice'

#person = Person.new
# puts person.say_hello

#person.set_car("Honda")
#print person.get_car

# person.car = "honda"
# print person.car

# person.first_name = "junaid"
# person.last_name = "iqbal"

# puts person.initialize_names

# puts person.full_name
dice = Dice.new
3.times {
    puts "Enter number: "
    num = gets.chomp.to_i
    dice.person_1_try
    dice.person_2_try
    if dice.win_person(dice.get_person_1, dice.get_person_2) == 0
        puts "Match end, player 1 win"
        break
    elsif dice.win_person(dice.get_person_1, dice.get_person_2) == 1
        puts "Match end, player 2 win"
        break
    else
        if i == 3
            puts "Match end, Draw the match"
            break
        else
            puts "Match is continued!"
        end
    end
}
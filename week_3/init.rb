require_relative 'class/dice'

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
i = 0
while i < 3 do
    puts "Enter number: "
    num = gets.chomp.to_i
    dice.set_person_1(num)
    dice.person_2_try
    dice.random_generate
    check = dice.win_person
    puts check
    if check == 0
        puts "Match end, player 1 win"
        break
    elsif check == 1
        puts "Match end, player 2 win"
        break
    else
        if i == 3
            puts "Matched, Draw the match"
            break
        else
            puts "Match is continued!"
        end
    end
end
# challenge 2

def dice_game(array)
    sum = 0
    array.each do |x, y|
        if x == y
            return 0
        else
            sum += (x+y)
            #sum = sum + (x+y)
        end
    end
    sum
end

sum = dice_game([[4, 4], [4, 5], [4, 5]])
puts sum


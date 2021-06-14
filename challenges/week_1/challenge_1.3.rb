# challenge 3

def sum_of_evens(array)
    sum = 0
    array.each do |x|
        #print x
        x.each do |y|
            if y%2==0
                sum+=y
            end
        end
    end
    return sum
end

sum = sum_of_evens([
                    [-1, 0, -2],
                    [-5, -5, -7], 
                    [-9, -4, -3]
                  ])
puts sum

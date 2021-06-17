#Problem 1: encrypt the message
hacker_speak = ->(str){
    (str.length).times do |i|
        case str[i]
        when 'a'
            str[i]='4'
        when 'e'
            str[i]='3'
            
        when 'i'
            str[i]='1'
            
        when 'o'
            str[i]='0'
            
        when 's'
            str[i]='5'
        end
    end
    return str
}

print hacker_speak.call("javascript is cool")



#Problem 2: 
# dice_game = Proc.new{ |array|
#     sum = 0
#     array.each do |x, y|
#         if x == y
#             0
#         else
#             sum += (x+y)
#             #sum = sum + (x+y)
#         end
#     end
#     sum
# }

# result = dice_game.call([[4, 4], [4, 5], [4, 5]])
# print result


#Problem 3: Sum of even numbers
# sum_of_evens = Proc.new{|array|
#     sum = 0
#     array.each do |x|
#         #print x
#         x.each do |y|
#             if y%2==0
#                 sum+=y
#             end
#         end
#     end
#     sum

# }

# result = sum_of_evens.call([
#     [-1, 0, -2],
#     [-5, -5, -7], 
#     [-9, -4, -3]
#   ])

# puts result
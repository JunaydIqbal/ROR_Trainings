
# def remove_invalid_elements(array)
#     temp_array = []
#     array.each do |i|
#         if i >= 0 || i < 0
#             temp_array.push(i)
#         end
#     end
#     temp_array
# end

def index_filter(array, str)
    temp_str = ""
    #print array.length
    if array.length >= 0 || str != ''
        
        array.each do |i|
            begin
                if i >= 0 || i < 0
                    temp_str = (temp_str + str[i])
                end
                #raise "\nInvalid Array input!\n"
                #puts 'after exception\n'
            rescue ArgumentError, NoMethodError, TypeError
                #array = remove_invalid_elements(array)
                return "Invalid inputs in array\n"
            end
        end
    end
    temp_str.downcase
end

array = [9, -9, 2, 27, 36, [], 6, 13, -1, 2, 0, 30, 2]
str = "That's life, I've got you under my skin"

print index_filter([], str)
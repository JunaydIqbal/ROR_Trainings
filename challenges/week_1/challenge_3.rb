

def index_filter(array, str)
    temp_str = ""
    array.each do |i|
        temp_str = (temp_str + str[i]).downcase
    end
    temp_str
end

array = [9, -9, 2, 27, 36, 6, 5, 13, -1, 2, 0, 30, 2]
str = "That's life, I've got you under my skin"

print index_filter(array, str)
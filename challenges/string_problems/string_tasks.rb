#Task 1: remove all vowels from string
# str = "Hello World"
# vowels = ["a", "e", "i", "o", "u"]

# str.each_char do |i|
#     if vowels.include?(i)
#         str.delete!(i)
#     end
# end
# print str



#Task 2: add , in white spaces except in end
# str = "Hello Good Morning"
# str.length.times do |i|
#     if str[i] == ' ' && str[i] != '\0'
#         str[i] = ","
#     elsif str[i] == '\0'
#         str[i] = "."
#     end
# end

# print str


# Task 3: check the anagram ::: army = mary
# str1 = "army"
# str2 = "mary"
# array = []
# check = 0
# str2.each_char do |i|
#     array.push(i)
# end

# str1.each_char do |i|
#     if array.include?(i)
#         check += 1
#     end
# end

# print check == str1.length ? "It is Anagram\n" : "It is not Anagram\n"
# Problem 1: if word is matched with array so slice the string 


# names_array = ["junaid", "moiz", "arslan", "noman"]
# msg = "Hello i am junaid from university of lahore."


# def convert_string_array(str)
#     array = []
#     word = ""
#     str.each_char do |ch|
#         if ch == ' ' || ch == '.'
#             array.push(word)
#             word = ""
#         else
#             word += ch
#         end
#     end
#     array
# end

# slice_ch = ""
# statement = []
# check = false
# count = 0
# msg.each_char do |ch|
#     if ch == ' ' || ch == '\0'
#         names_array.each do |word|
#             if word == slice_ch
#                 check = true
#                 break
#             end
#         end
#         statement.push(slice_ch)
#         count += 1
#         slice_ch = ""
#     elsif check == true
#         break
#     else
#         slice_ch += ch
#     end
# end

# puts statement.join(" ")

# split_msg = convert_string_array(msg)    
# puts split_msg[0, count].join(" ")     #using slice in array






#Problem2: slice in hash

# hash = {a: 1, b: 2, c: 3, d: 4, e: 5}
# print hash.slice(:b, :d)
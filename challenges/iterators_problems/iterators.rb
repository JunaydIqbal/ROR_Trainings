#Task 1: add the data of all marks from hash and print it through each_with_index
# array = []
# hash = {junaid: 25, moiz: 13, salman: 45, noman:18}

# hash.each_value do |i|
#     array.push(i)
# end

# array.each_with_index do |i|
#     puts i
# end


#Task 2: print the even numbers using each_with_object
# array = [2,5,4,3,9,7,1,0]
# print array.each_with_object([]){|i, a| a << i * 2}


#task 3: print 2 table using upto
# 1.upto(10) do |i|
#     print "2", " * ", i, " = ", i * 2, "\n"
# end


# Task 4: move step up 5 
# (0..50).step(5) do |i|
#     puts i
# end


#Task 5: print stars in arrow style
# def print_stars(num, count = 0)
#     if count == 0
#         1.upto(num/2) do |i|
#             i.times do |j|
#                 print "*"
#             end
#             print "\n"
#         end
#         print_stars(num/2, -1)
#     else
#         (num-1).downto(1) do |i|
#             i.times do |j|
#                 print "*"
#             end
#             print "\n"
#         end
#     end
# end

# print_stars(10)
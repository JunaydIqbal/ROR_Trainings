# Problem 1: find the longest word from array

# array = ["abc", "bdes", "jdih", "wnjsndj", "njs", "cikc"]
# print array.inject{|m, word| m.length > word.length ? m : word}



#problem 2: an array has student marks of his/her asignments, and teacher want to increase the number of assignment 
# and sum all the numbers to pass the student

# marks = [10,12,14,15]
# puts "Assignments: "
# marks.length.times do |i|
#     print "Assignment No. ", i+1, ": ", marks[i], "\n"
# end
# print "Enter assignment number to change marks: "
# ass_no = gets.chomp.to_i

# print "Enter marks of ", ass_no, ": "
# new_marks = gets.chomp.to_i

# marks[ass_no - 1] = new_marks
# sum = marks.inject(0){|sum, each_marks| sum += each_marks}
# if sum < 50
#     #print marks
#     print "Enter extra marks to pass the student: "
#     extra_marks = gets.chomp.to_i
#     sum = marks.inject(extra_marks){|sum, each_marks| sum += each_marks}
#     print "Total marks: ", summ "\n"
    
#     print sum > 50 ? "Passed\n" : "Still Fail\n"
# else
#     print "Total marks: ", sum, "\n"

# end



#Problem 3:  sum the even numbers in array using inject
# array = [1,2,3,4,5,6,7,8,9]
# sum2 = 0
# array.inject(0){|sum, num| num%2==0 ? sum2 = sum2 + num.to_i : next}

# print sum2
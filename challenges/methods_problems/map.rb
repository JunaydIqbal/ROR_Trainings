# Problem: Seperate +ve and -ve elements in array

array = [2, -2, 6, 4, -1, 3, -4, 1]
positive_array = []
negative_array = []

positive_array = array.map{|element| element >= 0 ? element : nil}
positive_array = positive_array - [nil]

negative_array = array.map{|element| element < 0 ? element : nil}
negative_array -= [nil]

print "Positive Array: ", positive_array, "\n"
print "Negative Array: ", negative_array, "\n"
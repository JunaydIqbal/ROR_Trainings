#Task 1: Sum of all elements in array
# array = [1,3,6,5,8]
# puts array.inject {|sum, num| sum + num}



#Task 2: remove duplicate elements from array
# array = [1, 2, 1, 3, 5, 4, 5, 5]
# print array.select {|num| array.count(num) > 1}


#Task 3: Check first and last element are same or not in two arrays
array1 = [1,6,5,8,3]
array2 = [1,7,8,6,3]
print array1[0] == array2[0] && array1[-1] == array2[-1]


#Task 4: Double the numbers
# array = [1,5,6,3,2]
# print array.map {|num| num*2}


#Task 5: rotate left
# array = [1,5,6,3,9,4]
# rotate = 2   #ask from user
# temp_arr = []
# rotate.times do |i|
#     temp_arr.push(array[i])
# end
# slice = array.slice!(rotate, array[-1])
# print slice + temp_arr




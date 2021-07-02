# Problem 1: find the even numbers from array, if numbers are duplicate so remove it
array = [1,5,3,1,9,5,7,6,2,7]

print array.reject{|element| element.odd?}.uniq

#opposite to condition

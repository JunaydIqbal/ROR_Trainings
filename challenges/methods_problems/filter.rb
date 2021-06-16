# find the odd numbers from array, if numbers are duplicate so remove it
array = [1,5,3,1,9,5,7,6,2,7]

print array.filter{|element| element.odd?}.uniq


#Problem: element is in nested array or not

array = [1,2,3,[4,5,6,[7,[8,9]]]]
element = 7

array.flatten!
print array.include?(element)
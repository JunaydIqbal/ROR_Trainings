#Problem 1: Delete the vowels characters from string

str = "Hello, I am Junaid Iqbal"

print str.delete "aeiou"




#Problem 2: Delete element from array

array = [1,2,3,4,5,6,7,8]

begin

    array.delete(5) {|num| raise 'Not Found'}
    print array
rescue
    print "\nElement not found\n"
end

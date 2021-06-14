#Question::::::
# Create a function that takes an array of numbers between 1 and 10 (excluding one number) and returns the missing number.
# Examples
# missing_num([1, 2, 3, 4, 6, 7, 8, 9, 10]) ➞ 5
# missing_num([7, 2, 3, 6, 5, 9, 1, 4, 8]) ➞ 10
# missing_num([10, 5, 1, 2, 4, 6, 8, 3, 9]) ➞ 7
# Notes
# The array of numbers will be unsorted (not in order).
# Only one number will be missing. 



def missing_num(array)
    length = array.length
    total = (length + 1) * (length + 2) / 2
    i = 0
    while i < length do
        total -= array[i]
        i += 1
    end
    total
end

array = [7, 2, 3, 6, 5, 9, 1, 4, 8]
missing = missing_num(array)
puts missing
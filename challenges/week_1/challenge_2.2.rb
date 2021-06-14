# Challenge 5

# Write a function that takes a two-digit number and determines if it's the largest of two possible digit swaps.
# To illustrate:
# largest_swap(27) ➞ false
# largest_swap(43) ➞ true
# If 27 is our input, we should return false because swapping the digits gives us 72, and 72 > 27. On the other hand, swapping 43 gives us 34, and 43 > 34.
# Examples
# largest_swap(14) ➞ false
# largest_swap(53) ➞ true
# largest_swap(99) ➞ true
# Notes
# Numbers with two identical digits (third example) should yield true (you can't do better).


def largest_swap(number)
    last = 0
    reverse = 0
    temp = number
    while number > 0 do
        last = number % 10
        reverse = (reverse * 10) + last
        number /= 10
    end
    return temp > reverse ? "True" : "False"
end

check = largest_swap(53)
puts check
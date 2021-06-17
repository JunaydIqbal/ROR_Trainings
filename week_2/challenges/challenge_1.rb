
# Create a function that checks if a given integer is exactly the factorial of an integer or not. true if it is, false otherwise.
# Examples
# is_factorial(2) ➞ true
# # 2 = 2 * 1 = 2!
# is_factorial(27) ➞ false
# is_factorial(24) ➞ true
# # 24 = 4 * 3 * 2 * 1 = 4!
# Notes
# No error handling is necessary. Inputs are all positive integers.
# Alternatively, you can solve this with a recursive approach.
# There are similar versions of this challenge that is a bit more challenging than this one (a recursive and a non-recursive).


def is_factorial(num)
    looping_value = 1
    sum = 1
    while sum <= num do
        sum *= looping_value
        if sum == num
            return true
        end
        looping_value += 1
    end
    false
end

check_factorial = is_factorial(24)
puts check_factorial
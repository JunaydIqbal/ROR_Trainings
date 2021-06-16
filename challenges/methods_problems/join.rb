#Problem 1: string convert to array and back to string

str = "Hello i am junaid iqbal"
array = []

array.push(str.split(' '))
array.flatten!

print array.join(" ")


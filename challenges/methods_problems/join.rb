#Problem 1: string convert to array and back to string

str = "Hello i am junaid iqbal moiz is my"
array = []

array.push(str.split(' '))
array.flatten!

index = 1
array[0] = array[0].to_s.capitalize + "!"
implement = false
count = 1
fourth_element = ""
while index < array.length do
    if (index - count) == 0
        array[index] = array[index].to_s.downcase
        index += 1
    elsif (index - count) == 1
        str = array[index]
        array[index] = array[index].upcase
        index += 1
    elsif (index - count) == 2
        array[index] = array[index].to_s.capitalize
        index += 1
    else
        fourth_element = array[index]
        fourth_element.to_s.length.times do |i|
            if i % 2 == 0
                fourth_element[i] = fourth_element[i].upcase
            else
                fourth_element[i] = fourth_element[i].downcase
            end
        end
        array[index] = fourth_element
        
        index += 1
        count = index
    end
end

final_result = array.join(" ") + "."
print final_result

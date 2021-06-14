# Task 1 - Array - Hash hybrid

# array = [{name: "junaid", age: 22}, {name: "moiz", age: 21}, {name: "arslan", age: 25}]
# user = "moiz"
# array.each do |i|
#     if i[:name].include?(user)
#         print i
#     end
# end


# Task 2: Hash - Array hybrid

hash = {a: [1,9,0], b: [4,7,6], c: [8,1,9]}
temp_arr = []
j = 0
hash.each_value do |i|
    hash.length.times do |j|
        temp_arr.push(i[j])
    end
end
print temp_arr



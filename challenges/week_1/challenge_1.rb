

def common_elements(array1, array2)
    len1 = array1.length
    len2 = array2.length
    temp_array = []
    if len1 > len2
        array1.each_with_index do |i|
             temp_array.push(array2.find {|num| num == i})
        end
    else
        array2.each_with_index do |i|
             temp_array.push(array1.find {|num| num == i})
       end
    end
    temp_array.compact!
end

array1 = [-1, 3, 4, 6, 7, 9]
array2 = [1, 3]
print common_elements(array1, array2)
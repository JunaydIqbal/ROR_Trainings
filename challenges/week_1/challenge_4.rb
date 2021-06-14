
hash = {
    '-1' => [-8, -0, 13, 5],
    '19' => [5, -6, 22, -98],
    '-9' => [4, 33, -89, 11],
    '0' => [7, 0, 5, 2]
  }

def make_array(array)
    temp_array = []
    array.length.times do |i|
        temp_array.push(array[i])
    end
    temp_array.sort!
end

def sort_hash(hash)
    temp = []
    temp_hash = Hash.new

    hash.each_key do |i|
        temp.push(i.to_i)
    end
    temp = temp.sort
    hash.length.times do |i|
        temp_hash[temp[i].to_s] = hash[temp[i].to_s]
    end
    temp_hash
end

sorted_hash = {}
temp_array = Array.new
hash.each_key do |i|
    key = i.to_s
    sorted_hash[key] = make_array(hash[key])
end

sorted_hash = sort_hash(sorted_hash)

print sorted_hash
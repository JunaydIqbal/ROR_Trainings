

def partition(str, partition_size)
    part = []
    count = 0
    partition_size.times do |i|
        part.push(str.slice(count, count + partition_size))
        count += partition_size
    end
    if str.length % partition_size == 0
        return part
    end
    part.compact!
end

print partition("c+++", 2)


#Task 1: merge hashes
# hash = {:a=>2, :b=>2, :c=>3}
# hash2 = {:b=>2, :c=>4, :a=>1}
# puts hash.merge(hash2)


#Task 2: print hash except user given keys
# hash = {a:2, b:3, c:8, e:4}
# user = gets.chomp
# print hash.except(user.to_sym)


#Task 3: Teacher input no. of assignments and assign the marks
hash = Hash.new
total_no = 4
total_no.times do |i|
    print "Enter marks of ass " + ((i+1).to_s) + ": "
    marks = gets.chomp.to_i
    hash[("ass" + (i+1).to_s).to_sym] = marks
end

print hash


#Task 4: find the best 2 assignments from previous hash
hash = hash.sort_by {|k,v| v}.to_h
print "\nBest 2 Assignments are: "
print hash.map {|k| k}[-2..-1].to_h



#Task 5: find the quentity stock from Hash
# hash = {coke: 3, pepsi: 7, fanta: 10, dew: 5}
# print "Enter item name: "
# item = gets.chomp
# item.downcase!
# item = item.to_sym
# hash.each_key do |i|
#     if item == i
#         print i,": ", hash[i.to_sym]
#     end
# end
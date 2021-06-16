#Problem: Suggest one email randomly
#same with unshift alias of unshift

random = rand(100)+1

array = ["@gmail.com", "@hotmail.com", "@outlook.com"]
print "Enter user name: "
username = gets.chomp
array.map!{|users| users.prepend(username, random.to_s)}
print array.sample
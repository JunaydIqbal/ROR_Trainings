
#time.now
# time1 = Time.now
# time2 = Time.new
# puts time1.inspect
# puts time2.inspect

#time.new objects
# time = Time.new
# puts time.year
# puts time.month
# puts time.day
# puts time.wday
# puts time.yday
# puts time.gmtime
# puts time.zone
# puts time.utc

# puts Time.utc(2021, 8, 9, 10, 11)

# puts Time.at(time)

# puts time.gmtime



# puts time.to_s
# puts time.ctime
# puts time.localtime
# puts time.strftime("%Y-%m-%d %H:%M:%S")


require 'time'
require 'date'
# time = Time.new
# birth_day = "1997-10-15"
# current_date = time.strftime("%Y-%m-%d %H:%M:%S")
# birth_day = Time.parse(birth_day)
# current_date = Time.parse(current_date)

# total_days_on_birth = current_date - birth_day
# total_days_on_birth.to_time!
# print total_days_on_birth
# time1 = Time.new(1997, 10, 15)
# #birth = Date.new(1997, 10, 15)
# today = Time.new

# print Time.at(today - time1)
# print today.yesterday


# time = Time.now.to_date
# time2 = Date.new(1996, 10, 15)

# puts time - time2


# puts time2.leap?



#puts DateTime.now.month




#Problem BirthDate

week_days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
puts "Birth year: "
birth_year = gets.chomp
puts "Number of month: "
birth_month = gets.chomp
puts "Date of born: "
birth_date = gets.chomp


birthday = DateTime.new(birth_year.to_i, birth_month.to_i, birth_date.to_i)
puts "The day of your birth is : #{week_days[birthday.wday]}"
puts "Week of your birth: #{birthday.cweek}"
puts "Born day: #{birthday.yday}"

if birthday.leap?
    puts "Your birth is on leap year"
else
    puts "Your birth is not on leap year"
end
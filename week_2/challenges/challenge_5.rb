#Build your own calender on ruby with ranges 2000 to 2021

require 'date'
#require 'time'

def days_in_month(year, month)
    Date.new(year, month, -1).day
end

valid_inputs = ->{
    print "Enter the year (2 or 4 digits format i.e. 2021, 20 etc.): "
    input_year = gets.chomp
    #print "\n"
    if input_year.length == 4
        if input_year.to_i >= 1970 && input_year.to_i <= 2070
            return input_year.to_i
        else
            puts "Invalid year! (Years ranges: 1970 - 2070), try again!"
            valid_inputs.call
        end
    elsif input_year.length == 2
        if input_year.to_i >= 70
            puts "Which year do you want to choose: "
            print "1. 19#{input_year},\t2. 20#{input_year}: "
            choose_choice = gets.chomp.to_i
            if choose_choice == 1
                return ("19" + input_year).to_i
            elsif choose_choice == 2
                return ("20" + input_year).to_i
            else
                puts "You've entered invalid input, try again!"
                valid_inputs.call
            end
        elsif input_year == "00"
            puts "The range of calendar is 1970 - 2070, so your match will be 20#{input_year}"
            return ("20" + input_year).to_i
        elsif input_year.to_i < 70
            puts "The range of calendar is 1970 - 2070, so your match will be 20#{input_year}"
            return ("20" + input_year).to_i
        else
            puts "Invalid input format, try again!"
            valid_inputs.call
        end
    else
        puts "Invalid formats, try again!"
        valid_inputs.call
    end

}
input_year = valid_inputs.call
entered_year = input_year.to_s
temp_array_split_year = []
while input_year != 0 do
    rem = input_year % 10
    input_year /= 10
    temp_array_split_year.push(rem)
end
temp_array_split_year.pop
temp_array_split_year.pop
temp_array_split_year.rotate!
split_year = temp_array_split_year.join

check_leap =  DateTime.new(input_year, 1, 1)
find_year = ""
year_hash = Hash.new(entered_year)
year_hash[entered_year] = Hash.new

#year_iteration = 1
months_iterate = 1
days_iterate = 1


while months_iterate <= 12 do
    check_days_of_month = days_in_month(entered_year.to_i, months_iterate)
    find_year = DateTime.new(entered_year.to_i, months_iterate, days_iterate)
    month = find_year.strftime("%b") + "-" + split_year        
    #year_hash[entered_year] = Hash.new(month)
    year_hash[entered_year][month] = Hash.new
    while days_iterate <= check_days_of_month do
        
        days = find_year.strftime("%a") 
        #year_hash[month] = Hash.new(days_iterate.to_s)
        year_hash[entered_year][month][days_iterate.to_s] = days
        #puts find_year.strftime("%a")
        #print year_hash
        days_iterate += 1
        find_year += 1
    end
    find_year -= days_iterate
    days_iterate = 1
    months_iterate += 1
end
    
def display_hash(hash)
    hash.each do |k,v|
        print "{" + k.to_s + "=> \n"
        v.each do |k2, v2|
          print "{" + k2.to_s + "=> " + v2.to_s + "\n"
          #puts k2, v2
        end
        print "}\n"
    end
    print "}\n"
end

display_hash(year_hash)

print "Which month do you want to search(Jan, Feb, Mar etc.): "
month_search = gets.chomp.capitalize
puts month_search
month_search += ("-" + split_year)
print year_hash.dig(entered_year,month_search)

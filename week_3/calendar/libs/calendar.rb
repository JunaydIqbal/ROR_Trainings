require 'date'

class Calendar
    private

    def days_in_month(year, month)
        Date.new(year, month, -1).day
    end

    def split_year(input_year)
        temp_array_split_year = []
        while input_year != 0
            rem = input_year % 10
            input_year /= 10
            temp_array_split_year.push(rem)
        end
        temp_array_split_year.pop
        temp_array_split_year.pop
        temp_array_split_year.rotate!
        split_year = temp_array_split_year.join
        split_year
    end

    public

    def display_hash(hash)
        hash.each do |k,v|
            print "{" + k.to_s + "=> \n\n"
            v.each do |k2, v2|
              print "{" + k2.to_s + "=> " + v2.to_s + "\n\n"
              #puts k2, v2
            end
            print "}\n"
        end
        print "}\n"
    end

    def build_calendar(valid_inputs)
        
        input_year = valid_inputs
        entered_year = input_year.to_s
        # temp_array_split_year = []
        # while input_year != 0
        #     rem = input_year % 10
        #     input_year /= 10
        #     temp_array_split_year.push(rem)
        # end
        # temp_array_split_year.pop
        # temp_array_split_year.pop
        # temp_array_split_year.rotate!
        # split_year = temp_array_split_year.join

        split_year_end_part = split_year(input_year)
        #split_year_parts = split_year(input_year)

        check_leap = DateTime.new(input_year, 1, 1)
        find_year = ""
        year_hash = Hash.new(entered_year)
        year_hash[entered_year] = Hash.new

        #year_iteration = 1
        months_iterate = 1
        days_iterate = 1

        while months_iterate <= 12
            check_days_of_month = days_in_month(entered_year.to_i, months_iterate)
            find_year = DateTime.new(entered_year.to_i, months_iterate, days_iterate)
            month = find_year.strftime("%b") + "-" + split_year_end_part
            #year_hash[entered_year] = Hash.new(month)
            year_hash[entered_year][month] = Hash.new
            while days_iterate <= check_days_of_month
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
        year_hash
    end


    def search_month(month, year, hash_year)
        month.capitalize!
        month += ("-" + split_year(year))
        puts hash_year.dig(year.to_s, month)
    end
end
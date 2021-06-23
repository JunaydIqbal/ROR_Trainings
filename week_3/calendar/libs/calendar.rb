require 'date'
require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/calendar/modules/months'
require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/calendar/modules/years'
require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/calendar/modules/validation'

class Calendar
    private
    include Months
    include Year
    include Validation
    @@input_year

    def days_in_month(year, month)
        Date.new(year, month, -1).day
    end

    public

    def initialize
        @@input_year = valid_inputs
    end

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

    def build_calendar
        entered_year = @@input_year.to_s
        split_year_end_part = split_year(@@input_year)
        find_year = ""
        year_hash = Hash.new(entered_year)
        year_hash[entered_year] = Hash.new

        months_iterate = 1
        days_iterate = 1

        while months_iterate <= 12
            check_days_of_month = days_in_month(entered_year.to_i, months_iterate)
            find_year = initialize_year(entered_year.to_i, months_iterate, days_iterate)
            month = find_and_make_month(find_year, split_year_end_part)
            year_hash[entered_year][month] = Hash.new
            while days_iterate <= check_days_of_month
                days = find_year.strftime("%a")
                year_hash[entered_year][month][days_iterate.to_s] = days
                days_iterate += 1
                find_year += 1
            end
            find_year -= days_iterate
            days_iterate = 1
            months_iterate += 1
        end
        year_hash
    end

    def search_month(month, hash_year)
        #month_obj = Months.new
        separate_month_from_calendar(month, @@input_year, hash_year)
    end
end
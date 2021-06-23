require 'date'
require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/calendar/modules/year'
require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/calendar/modules/months'
require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/calendar/modules/days'
require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/calendar/modules/validation'

class Calendar
    
    include Validation
    include Months
    include Year
    include Days

    def initialize
        @@input_year = valid_inputs
    end

    private

        def days_in_month(year, month)
            Date.new(year, month, -1).day
        end

    public

        def display_calendar(hash)
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
            calendar_data = Hash.new(entered_year)
            calendar_data[entered_year] = Hash.new
            calendar_data[entered_year] = get_months(calendar_data, entered_year, split_year_end_part)
            calendar_data
        end   

        def search_month(month, hash_year)
            #month_obj = Months.new
            separate_month_from_calendar(month, @@input_year, hash_year)
        end
end
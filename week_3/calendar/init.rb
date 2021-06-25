#requires
require_relative 'libs/calendar'
require_relative 'modules/validation'
require_relative 'modules/months'
require_relative 'modules/year'
require_relative 'modules/days'


cal = Calendar.new
calendar_data = cal.build_calendar
cal.display_calendar(calendar_data)

print "Which month do you want to search(Jan, Feb, Mar etc.): "
month_search = gets.chomp
cal.search_month(month_search, calendar_data)
require_relative 'libs/calendar'
require_relative 'modules/validation'
require_relative 'modules/months'
require_relative 'modules/years'


cal = Calendar.new
hash_cal = cal.build_calendar
cal.display_hash(hash_cal)

print "Which month do you want to search(Jan, Feb, Mar etc.): "
month_search = gets.chomp
cal.search_month(month_search, hash_cal)

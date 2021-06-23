#require 'date'

module Months

  def find_and_make_month(year, split_year)
    year = year.strftime("%b") + "-" + split_year
    year
  end

  def separate_month_from_calendar(month, year, hash_year)
    month.capitalize!
    month += ("-" + split_year(year))
    puts hash_year.dig(year.to_s, month)
  end

end
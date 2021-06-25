#module months

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

  def get_months(calendar_data, year_value, split_year)
    months_iterate = 1
    make_month = ""
    months = Hash.new
    while months_iterate <= 12
        check_days_of_month = days_in_month(year_value.to_i, months_iterate)
        make_month = initiate_year(year_value.to_i, months_iterate, 1)
        month = find_and_make_month(make_month, split_year)
        months[month] = get_days(calendar_data, year_value, months_iterate, month, make_month)
        make_month -= check_days_of_month
        months_iterate += 1
    end
    months
  end

end
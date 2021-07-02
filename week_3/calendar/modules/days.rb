#module days
module Days
  
  def get_days(calendar_data, year_value, month_value, split_month, make_month)
    days_iterate = 1
    days = Hash.new
    check_days_of_month = days_in_month(year_value.to_i, month_value)
    while days_iterate <= check_days_of_month
        find_days = make_month.strftime("%a")
        days[days_iterate.to_s] = find_days
        days_iterate += 1
        make_month += 1
    end
    days
  end

end
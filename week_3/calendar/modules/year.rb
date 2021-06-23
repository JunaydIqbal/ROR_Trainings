#require 'date'

module Year

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

  def initiate_year(entered_year, months_iterate, days_iterate)
    DateTime.new(entered_year, months_iterate, days_iterate)
  end


end
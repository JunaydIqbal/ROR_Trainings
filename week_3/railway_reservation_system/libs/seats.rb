require 'date'
require_relative 'trains'

class Seats
  private
  @@day = ""
  @@train_seats = {}
  @@seats_quota = {Mon: 45, Tue: 35, Wed: 13, Thu: 30, Fri: 25, Sat: 34, Sun: 55}
  public
  def initialize
    @dt = DateTime.new
    self.@@day = @dt.strftime("%a")
  end

  def divide_seats(total_trains, quota)
    len = total_trains.length
    seats_array = []
    div = quota / len
    
    len.times do |i|
      if (div * len) == quota
        return 


  def set_seats(total_trains)
    today = @@seats_quota[@@day.to_sym]
    today = today.to_i
    total_trains.each do |k, v|


end
class Train
  private
  @@cities = ['Karachi', 'Islamabad', 'Lahore', 'Faisalabad']
  @@trains_name = ["Millat Express", "Karachi Express", "Karakhom Express", "Badar Express"]
  @@set_routes = {}
  @@total_trains = -1
  attr_accessor :set_seat{}

  public

  def initialize(train_name)
    if @@total_trains < 4
      @@total_trains += 1
      @@set_routes[@@trains_name[@@total_trains]] = make_route
    else
      puts "\n\n* Limit of train is full\n\n"
    end
  end

  def make_route
    @@cities.shuffle!()
    @@cities.join("")
  end

  def train_seating_set


end
class Route

  @@make_route = Array.new

  def initialize(start = "", finish = "")
    @@make_route.push(start)
    @@make_route.push(finish)
  end

  def get_route(train_name)
    route_data = []
    found_train = false
    begin
      file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/trains.txt", "r")
      i = 0
      while train_data = file.gets        
        route_data << train_data.strip.split(/(?=[|])/)
        if train_name == route_data[i][0].strip
          found_train = true
          @@make_route[0] = route_data[i][1]
          break
        end
        i += 1
      end
      file.close
    rescue
      print "\n* Error occured in opening the file\n"
      file.close
    end
    print @@make_route[0]
    if found_train == true
      return @@make_route[0]
    else
      print "\n\n\t* Train not found in list\n\n"
    end
    nil
  end
  
  def set_route(start, finish)
    @@make_route.push(start)
    @@make_route.push(finish)
  end

  def add_new_route(new_route)
    @@make_route.push(new_route)
  end

  def get_current_route
    @@make_route.join(" - ")
  end

end
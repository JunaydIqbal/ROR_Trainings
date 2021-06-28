require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/libs/route'
require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/libs/seat'

class Train

  def initialize(name, route_start, route_end)
    @@train_name =  name
    @@assign_route = Route.new(route_start, route_end)
    store_data
  end

  private

    def store_data
      begin
        file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/trains.txt", "a")
        file.print(@@train_name, " | ", @@assign_route.get_current_route, "\n")
        file.close
        puts "\n*** Train Data inserted successfully ***\n\n"

      rescue
        puts "\n*** Train Data didn't insert successfully, due to file error ***\n\n"
      end
    end

    def update_data
      all_record = []
      begin
        file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/trains.txt", "r")
        while train_data = file.gets
          if @@train_name != train_data.strip.split(/\s+/).join("")
            all_record << train_data
          end
        end
        file.close
      rescue
        print "\n* Error occured in opening the file\n"
        file.close
      end
      begin
        file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/trains.txt", "w")
        all_record.length.times do |i|
          file.puts all_record[i]
        end
        file.print(@@train_name, " | ", @@assign_route.get_route , "\n")
        file.close
        puts "\n*** Train Data updated successfully ***\n\n"

      rescue
        puts "\n*** Train Data didn't updated successfully, due to file error ***\n\n"
      end
    end

    def self.fetch_data
      all_record = []
      check = false
      begin
        file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/trains.txt", "r")
        while train_data = file.gets
          if train_data != ""
            all_record << train_data
            check = true
          end
        end
        file.close
      rescue
        print "\n\n\t* Error occured during fetch data\n\n"
        check = false
        file.close
      end
      if check == false
        puts "\n\t\t*No train found!\n\n"
      end
      all_record
    end

  public
    
    def self.display_all_trains
      puts "\n\n\t\t*All trains data\n"
      all_data = fetch_data
      all_data.each do |i|
        puts i
      end
    end

    def assign_route(train_name, route_start = "", route_end = "")
      all_data = fetch_data
      @@assign_route.set_route(route_start, route_end)
      self.update_data
    end

    def add_route(new_route)
      @@assign_route.add_new_route(new_route)
      self.update_data
    end

    def get_train_data
      "\n\n\t\t*** Train: #{@@train_name}***\n\t\t Routes: #{@@assign_route.get_route}\n\n"
    end

end
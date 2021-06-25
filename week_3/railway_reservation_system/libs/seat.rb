require 'date'
require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/libs/route'

class Seat

  @@day = ""
  @@train_seats = {}
  @@seats_quota = {Mon: 45, Tue: 35, Wed: 13, Thu: 45, Fri: 25, Sat: 34, Sun: 55}
  
  def initialize
    @dt = Date.today
    @@day = @dt.strftime("%a")
    @@route = ""
    @@all_trains = Hash.new
  end

  private

    def is_balanced(quota, total_trains)
      sum = 0
      total_trains.each do |key, val|
        sum += (val).to_i
      end
      sum == quota ? true : false
    end

    def fetch_seats_data(train_name = "")
      all_record = []
      seats_fetch = {}
      seats_value = []
      found_train = false
      i = 0
      begin
        file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/seats.txt", "r")
        if train_name == ""
          while train_data = file.gets
            #all_record << train_data
            all_record << train_data.strip.split(/(?=[|])/)
            seats_value[i] = all_record[i][1].split(/\s+/)
            seats_fetch[all_record[i][0]] = seats_value[i][1].to_i
            i += 1
          end
          found_train = true
        else
          while train_data = file.gets
            #all_record << train_data
            all_record << train_data.strip.split(/(?=[|])/)
            seats_value[i] = all_record[i][1].strip.split(/\s+/)
            if (all_record[i][0].to_s).strip != train_name
              seats_fetch[all_record[i][0].strip] = seats_value[i][1].to_i
            else
              found_train = true
            end
            i += 1
          end
        end
        file.close
      rescue
        print "\n* Error occured in opening the file\n"
        file.close
      end
      if found_train == false
        return nil
      end
      seats_fetch
    end

    def fetch_train_data(train_name = "")
      all_record = []
      #all_trains = all_trains.clear()
      route_data = []
      i = 0
      begin
        file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/trains.txt", "r")
        while train_data = file.gets        
          all_record << train_data
          route_data << train_data.strip.split(/(?=[|])/)
          @@all_trains[route_data[i][0]] = 0
          i += 1
        end
        file.close
      rescue
        print "\n* Error occured in opening the file\n"
        file.close
      end
      if route_data.length > 0
        #print route_data
        i = 0
        while i < route_data.length
          if train_name == route_data[0][i]
            @@route = route_data[0].slice(2,4)
            break
          end
          i += 1
        end
      end
      @@all_trains
    end

    def store_record(train_data)
      begin
        file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/seats.txt", "w")
        train_data.each do |name, total_seats|
          file.print(name, " | ", total_seats, "\n")
        end
        file.close
        puts "\n*** Seats Data stored successfully ***\n\n"

      rescue
        puts "\n*** Seats Data didn't stored, due to file error ***\n\n"
      end
    end

    def update_record(train_data, train_name)
      all_record = fetch_seats_data(train_name)
      print all_record
      begin
        file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/seats.txt", "w")
        all_record.each do |name, total_seats|
          puts name
          file.print(name, " | ", total_seats, "\n")
        end
        file.print(train_data[0], " | ", train_data[1], "\n")
        puts "\n*** Updated successfully ***\n\n"
      rescue
        puts "\n*** Seats Data didn't updated, due to file error ***\n\n"
      end
    end

    def store_ticket(username, train)
      begin
        file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/tickets.txt", "a")
        file.print(username, " | ", train , " | ", @@route, "\n")
        file.close
      rescue
        puts "\n*** Ticket didn't save successfully, due to file error ***\n\n"
        file.close
      end
    end

    def fetch_tickets
      all_record = []
      check = false
      begin
        file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/tickets.txt", "r")
        while ticket_data = file.gets
          all_record << ticket_data
          check = true
        end
        file.close
      rescue
        print "\n\n\t* Error occured during fetch data\n\n"
        check = false
        file.close
      end
      if check == false
        puts "\n\t\t*No ticket found!\n\n"
        return nil
      end
      all_record
    end

  public

    def assign_seats
      total_trains = self.fetch_train_data
      seats_assign_to_train = {}
      len = total_trains.length
      quota = @@seats_quota[@@day.to_sym]
      div = quota/len
      if (div * len) == quota
        total_trains.each_key do |key, val|
          seats_assign_to_train[key.to_s] = div 
        end
      else
        seats_array = []
        len.times do |i|
          seats_array[i] = div
        end
        remaining_seats = quota - (div * len)
        remaining_seats.times do |i|
          if (len - 1) == i
            i = 0
          else
            seats_array[i] += 1
          end
        end
        i = 0
        total_trains.each_key do |key, val|
          seats_assign_to_train[key.to_s] = seats_array[i]
          i += 1
        end
      end
      if is_balanced(quota, seats_assign_to_train)
        store_record(seats_assign_to_train)
        "\n\n\t* Assign seats successfully\n\n"
      else
        "\n\n\t*Not assigned due to something went wrong\n\n"
      end
    end

    def get_seats(train_name)
      check = false
      @@train_seats = self.fetch_seats_data
      @@train_seats.each do |name, total_seats|
        if train_name == name
          check = true
          return total_seats
        else
          check = false
        end
      end
      check == false ? "\n\t\t* No train found with this name #{train_name}\n\n" : total_seats
    end

    def book_seat(train_name, username)
      train_name = train_name.split.map(&:capitalize).join(' ')
      @@train_seats = self.fetch_seats_data
      if @@train_seats != nil
        #print @@train_seats
        check = false
        temp_array  = []
        @@train_seats.each do |name, total_seats|
          if train_name == name.split.map(&:capitalize).join(' ')
            if total_seats == 0
              print("\n\n\t* Train is full\n\n")
              check = false
              return -1
            else
              total_seats -= 1
              temp_array[0] = name
              temp_array[1] = total_seats
              check = true
              break
            end
          else
            check = false
          end
        end
        if check == true
          route_obj = Route.new
          @@route = route_obj.get_route(train_name)
          update_record(temp_array, train_name)
          display_ticket(username, train_name)
          return true
          #puts "\n\t\t*** Seat booked successfully ***\n\n"
        else
          print "\n\t\t* No train found with this name #{train_name}\n\n"
        end
      else
        print "\n\t\t* No train found with this name #{train_name}\n\n"
      end
      return false
    end

    def show_ticket
      ticket_data = self.fetch_tickets
      if ticket_data != nil
        print("\n\n\t* Registered Tickets\n\n")
        ticket_data.each do |i|
          puts i
        end
      end
    end

    def display_ticket(username, train_name)
      puts "**********************"
      puts "Username: #{username}"
      puts "Train: #{train_name}"
      puts "Route: #{@@route}"
      puts "**********************"
      store_ticket(username, train_name)
    end
end
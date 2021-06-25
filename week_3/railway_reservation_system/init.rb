require_relative 'libs/customer'
require_relative 'libs/train'
require_relative 'libs/seat'
require_relative 'libs/route'
require_relative 'modules/design'

$design_count = 0

include Design

def main_menu
  if $design_count == 0
    design_menu
    $design_count = 1
  end
  
  puts "\n\n\t\t     *** Main Menu ***\n\n"
  puts "1. Booking\n2. Customer list\n3. Add Train\n4. Display Total Tickets\n5. Assign Routes\n6. Add Routes\n7. Assign Seats\n8. Exit\n\n* Choose Option: "

  ch = gets.chomp
  if ch.length > 1
    puts "\n* You choose invalid input, try again!\n"
    menu
  elsif ch == "1"
    customer_values = design_booking
    username = customer_values[0]
    phone_no = customer_values[1]
    cnic = customer_values[2]
    cust_obj = Customer.new(username, phone_no, cnic)
    train_obj = Train.new
    seat_obj = Seat.new
    puts "Enter train name to booked: "
    train_name = gets.chomp
    success = seat_obj.book_seat(train_name, username)
    if success == true
      cust_obj.store_data
    elsif success == false
      print("\n\n\t* Data not stored due to train not found\n\n")
    end
    #main_menu
  elsif ch == "2"
    cust_obj = Customer.new
    cust_obj.get_customer_data
    #main_menu
  elsif ch == "3"
    puts "Enter train name: "
    train_name = gets.chomp
    puts "Enter Starting Point: "
    start_point = gets.chomp
    puts "Enter Ending Point: "
    end_point = gets.chomp
    train_obj = Train.new(train_name, start_point, end_point)
    #main_menu
  elsif ch == "4"
    seat_obj = Seat.new
    seat_obj.show_ticket
    #main_menu
  elsif ch == "5"
    print ("\n\n\t*Functionality comming soon\n\n")
    #main_menu
  elsif ch == "6"
    print ("\n\n\t*Functionality comming soon\n\n")
    #main_menu
  elsif ch == "7"
    seat_obj = Seat.new
    seat_obj.assign_seats
    #main_menu
  elsif ch == "8"
    puts "\n\n\t* Thank you for choosing our system\n\n"
  else
    puts "\n* You choose invalid input, try again!\n"
    #main_menu
    main_menu
  end
end

main_menu



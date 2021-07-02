require_relative 'libs/menu'
require_relative 'libs/bill'
require_relative 'libs/customer'
require_relative 'libs/order'

menu_obj = Menu.new

menu_obj.main_menu
ch = gets.chomp

if ch.length == 1
  case ch
  when '1'
    menu_obj.check_menu
  when '2'
    new_data = menu_obj.create_order
    if new_data != nil
      cust_data = Customer.new(new_data[0], new_data[1])
      #order_data = Order.new(new_data[2])
      bill_data = Bill.new(new_data[2], new_data[3])
      cust_data.save_record
      #order_data.save_record
      bill_data.save_record
      bill_data.display(new_data[0])
    else
      print("\n*Invalid data, try again!")
    end
  when '3'
    order_no = menu_obj.check_status
    bill_data = Bill.check_status(order_no)
    if bill_data != -1
      print("\nYour status is: ", bill_data, "\n")
    else
      print("\nOrder not found\n")
    end
  when '4'
    Order.display_all_orders
  when '5'
    Bill.display_all_bill
  when '6'
    status = menu_obj.set_status
    if status != -1
      bill_data = Bill.set_status(status[0], status[1])
    else
      print("\n\nInvalid input\n")
    end
  when '7'
    print("\n\n* Thank you for choosing our system\n")
  else
    print("\n\n* Invalid input\n")
  end
else
  print("\n\n*Invalid input\n")
end
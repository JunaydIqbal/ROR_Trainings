#initialize the program

require_relative 'libs/customer'

$design_count = 0
# obj = Customer.new("juanid", 3321710700, 3301516)

# obj.store_data


def design_booking
  check_numeric = ['0','1','2','3','4','5','6','7','8','9']
  cnic = ""
  phone_no = ""
  puts "Enter Customer name: "
  username = gets.chomp
  
  while true do
    puts "Enter Phone Number: "
    phone_no = gets.chomp
    phone_no = phone_no.split("")
    #print phone_no
    check = false
    phone_no.each do |num|
      if check_numeric.include?(num)
        check = true
      else
        check = false
        break
      end
    end
    if check == true
      phone_no = phone_no.join("")
      break
    end
  end
  
  while true do
    puts "Enter CNIC (without dashes): "
    cnic = gets.chomp
    cnic = cnic.split("")
    check = false
    cnic.each do |num|
      if check_numeric.include?(num)
        check = true
      else
        check = false
        break
      end
    end
    if check == true
      cnic = cnic.join("")
      break
    end
  end
  [username, phone_no, cnic]
end

def design
  print "***************************************************************\n
            Welcome to Railway Reservation System\n
                    Easy Booking System\n
***************************************************************\n\n"
end

def menu
  if $design_count == 0
    design
    $design_count = 1
  end
  
  puts "\n\n\t\t     *** Main Menu ***\n\n"
  puts "1. Booking\n2. Customer list\n3. Train Routes\n4. Purchased Tickets\n5. Exit\n\n* Choose Option: "

  ch = gets.chomp
  if ch.length > 1
    puts "\n* You choose invalid input, try again!\n"
    menu
  elsif ch == "1"
    customer_values = design_booking
    username = customer_values[0]
    phone_no = customer_values[1]
    cnic = customer_values[2]
    
  elsif ch == "2"

  elsif ch == "3"

  elsif ch == "4"

  elsif ch == "5"
    puts "\n\n\t* Thank you for choosing our system\n\n"
  else
    puts "\n* You choose invalid input, try again!\n"
    menu
  end
  

end

menu



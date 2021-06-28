module Design
  
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
          puts "\n  * Entered Phone# is incorrect\n"
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
          puts "\n  * Entered CNIC is incorrect\n"
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
  
  def design_menu
    print "***************************************************************\n
              Welcome to Railway Reservation System\n
                      Easy Booking System\n
***************************************************************\n\n"
  end

end
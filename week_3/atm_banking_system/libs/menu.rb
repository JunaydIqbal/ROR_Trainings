class Menu

  def main_menu
    puts "*************************************"
    puts "     Welcome to SPL ATM System"
    puts "*************************************"
  end

  def feature
    puts "\tMain Menu\n"
    puts "1. Login with Manager"
    puts "2. ATM Transection"
    print ("\nChoose: ")
    ch = gets.chomp
    ch
  end

  def login_manager
    puts "Enter ID: "
    id = gets.chomp
    puts "Enter Password: "
    pass = gets.chomp
    [id, pass]
  end

  def manager_portal(manager_info)
    display_menu = [1,2,3,4,5,6]
    puts "*******************************"
    puts "   Welcome to Manager Portal"
    puts "*******************************\n"
    puts " * Name: #{manager_info[0]}"
    puts " * Branch Code: #{manager_info[1]}"
    puts "\n        Main Menu"
    puts "1. Create branch Manager"
    puts "2. Create Customer Account"
    puts "3. Display Transections"
    puts "4. Search Customer"
    puts "5. Transfer amount to branch"
    print("\nChoose option: ")
    ch = gets.chomp.to_i
    if display_menu.include?(ch)
      return ch
    else
      manager_portal
    end
  end

  def atm_transection
    puts "*****************************"
    puts "  Welcome to SPL ATM System"
    puts "*****************************"
    print("Account#: ")
    account_no = gets.chomp
    print("\nPin(4 digits only): ")
    pin = gets.chomp
    while pin.length != 4
      print("\nInvalid Pin format\n")
      print("Enter again Pin(4 digits only): ")
      pin = gets.chomp
    end
    [account_no, pin]
  end

  def create_manager
    puts "Enter name of Manager: "
    name = gets.chomp
    puts "Enter branch code: "
    branch_code = gets.chomp
    [name, branch_code]
  end

  def create_customer_account
    puts "Enter customer name: "
    name = gets.chomp
    puts "Enter phone#: "
    phone = gets.chomp
    puts "Enter Date of Birth(yyyy-mm-dd): "
    dob = gets.chomp
    puts "ATM option On/Off (1/2): "
    atm = gets.chomp.to_i
    found = [1, 2]
    while !found.include?(atm)
      puts "\n* Invalid entry to selection option\n"
      puts "Select again 1 option (On-1, Off-0): "
      atm = gets.chomp.to_i
    end
    if atm == 1
      puts "Enter PIN Code(Must be in 4 digits): "
      atm = gets.chomp
      while atm.length != 4
        puts "\nInvalid PIN Code format\n"
        puts "Enter again, PIN Code: "
        atm = gets.chomp
      end
    end
    puts "Account Type (1. Current, 2. Savings): "
    acc_type = gets.chomp.to_i
    while !found.include?(acc_type)
      puts "\n* Invalid entry to selection account type\n"
      puts "Enter again account type: "
      acc_type = gets.chomp.to_i
    end
    puts "Debit amount: "
    amount = gets.chomp.to_i
    while amount < 500
      puts "You don't have debit less than 500 Rs.\n"
      puts "Debit amount again: "
      amount = gets.chomp.to_i
    end
    if acc_type == 1
     return [name, phone, dob, atm, 1, amount]
    else
      return [name, phone, dob, atm, 2, amount]
    end
  end
  
  def display_transection
    puts "\n****All Transections****"
  end

  def search_customer
    puts "Enter customer account#: "
    cust_acc = gets.chomp
  end

  def debit_amount
    puts "Enter Customer Acc#: "
    acc_no = gets.chomp
    puts "Enter amount "
    amount = gets.chomp.to_i
    [acc_no, amount]
  end

  def after_login_customer(record)
    puts "\n* Welcome #{record[1]}"
    puts "Account type: #{record[4]}"
    puts "Balance: #{record[7]}"
    puts "\nEnter amount to withdraw: "
    amount = gets.chomp.to_i
    while amount <= 0
      puts "\nInvalid amount"
      puts "Enter again amount to withdraw: "
      amount = gets.chomp.to_i
    end
    amount
  end

end


class Menu

  def main_menu
    puts "*************************************"
    puts "      Food Management System"
    puts "*************************************"

    puts "\n1. Check Menu\n2. Order\n3. Check Status\n4. Display Orders\n5. Display Bills\n6. Set Status\n7. Exit\n\n  - Choose: "
  end

  def check_menu
    puts "\n*** Our Menu ***\n"
    menu_data = {Sandwitch: 50, Pizza: 200, Pepsi: 40, Shake: 200}
    menu_data.each do |key, val|
      print(key, " - Rs. ", val, "\n")
    end
    menu_data
  end

  def create_order
    puts "Customer Name: "
    name = gets.chomp
    puts "Customer Phone#"
    phone_no = gets.chomp
    check = self.check_menu
    puts "Enter item: "
    item = gets.chomp
    puts "Pay amount(Rs.): "
    amount = gets.chomp
    while check[item.to_sym] != amount.to_i do
      print("\nYou've entered invalid amount, please pay correct amount\n")
      amount = gets.chomp
    end
    [name, phone_no, item, amount]
  end

  def check_status
    puts "Enter Order#: "
    order_no = gets.chomp
    order_no
  end

  def set_status
    puts "Enter Order#: "
    order_no = gets.chomp
    puts "Set your status (1. Ready, 2. Preparing): "
    status = gets.chomp
    if status == '1'
      return [order_no, "Ready"]
    elsif status == '2'
      return [order_no, "Preparing"]
    else
      return -1
    end
  end

end
    
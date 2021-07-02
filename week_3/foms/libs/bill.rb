require_relative "/home/traveller/Challenges Week 1/GitHub/week_3/foms/libs/order"
require 'time'

class Bill < Order

  attr_accessor :pay_amount

  def initialize(items, amount)
    super(items)
    self.pay_amount = amount
  end

  def save_record
    super
    begin
      file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/foms/data/bills.txt", "a")
      file.print(order_no, " | ", pay_amount, " | ", status, "\n")
      file.close
    rescue
      puts "\n\n*** Something went wrong during Bill creation! ***\n\n"
      file.close
    end
  end

  def self.display_all_bill
    i = 0
    begin
      file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/foms/data/bills.txt", "r")
      puts "\n\n* All bills data\n"
      file.each_line do |bill|
        print(i + 1, ": ", bill, "\n")
        i += 1
      end
      file.close
    rescue
      print "\n* File error!\n"
      file.close
    end
  end

  def self.check_status(order_no)
    all_data = []
    i = 0
    found = false
    file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/foms/data/bills.txt", "r")
    while temp_record = file.gets
      all_data << temp_record.strip.split(/(?=[|])/)
      temp_order_no = all_data[i][0].strip.split(/\s+/)
      temp_status = all_data[i][2].strip.split(/\s+/)
      if temp_order_no.join("") == order_no.to_s
        return temp_status[1]
      else
        found = false
      end
      i += 1
    end
    found == false ? -1 : "\nOrder found\n"
  end

  def self.update_record(all_data)
    begin
      file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/foms/data/bills.txt", "w")
      all_data.each do |i|
        file.print(i, "\n")
      end
      file.close
    rescue
      puts "\n\n*** Something went wrong during status updation! ***\n\n"
      file.close
    end
  end

  def self.set_status(order_no, update_status = "ready")
    all_data = []
    merge_data = []
    split_record = []
    select_update_data = []
    i = 0
    j = 0
    check = false
    check_status_same = false
    begin
      file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/foms/data/bills.txt", "r")
      file.each_line do |line|
        all_data = line.split
        merge_data[i] = all_data
        if merge_data[i][0] == order_no.to_s
          select_update_data = merge_data[i]
          if select_update_data[-1] == update_status
            print("\n\n* Status is already #{update_status} \n")
            check_status_same = true
            break
          else
            select_update_data[-1] = update_status
            check = true
          end
        else
          split_record[j] = merge_data[i].join(" ")
          j += 1
        end
        i += 1
      end
      split_record[j] = select_update_data.join(" ")
      file.close
      if check == false && check_status_same == false
        print("\n\n*Order not found\n")
      elsif check == true
        update_record(split_record)
        print("\n\n* Status update!\n")
      end
    rescue
      print "\n* Error occured in opening the file\n"
      file.close
    end
  end

  def display(cust_name)
    time = Time.now
    puts "****************************"
    puts "Order#: #{order_no} "
    puts "Customer: #{cust_name} "
    puts "Item: #{items} "
    puts "Pay Amount: #{pay_amount} "
    puts "Order Time: #{time} "
    puts "****************************"
  end

end
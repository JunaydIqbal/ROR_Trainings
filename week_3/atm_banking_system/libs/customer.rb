class Customer

  private

    def self.fetch_record
      fetch_all_cust = []
      begin
        i = 0
        file = File.new('/home/traveller/Challenges Week 1/GitHub/week_3/atm_banking_system/data/customers.txt', 'r')
        file.each_line do |line|
          per_line_data = line.split(" | ")
          fetch_all_cust[i] = per_line_data
          i += 1
        end
        file.close
        return fetch_all_cust
      rescue
        return nil
      end
    end

    def self.update_record(record)
      begin
        file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/atm_banking_system/data/customers.txt", 'w')
        record.each do |i|
          file.print(i[0], " | ", i[1], " | ", i[2], " | ", i[3], " | ", i[4], " | ", i[5], " | ", i[6], " | ", i[7], "\n")
        end
        file.close
        return true
      rescue
        file.close
        print("\n* Error occured during transection")
      end
      false
    end
  
  public

    def self.login(id, password = 1)
      if password == 1
        cust_data = fetch_record
        cust_data.each do |per_cust|
          if per_cust[0] == id
            return per_cust
          end
        end
        return nil
      else
        cust_data = fetch_record
        cust_data.each do |per_cust|
          if per_cust[0] == id && per_cust[6].to_i == password.to_i
            return per_cust
          end
        end
        print ("\n***Authentication Failed!\n")
        return nil
      end
    end

    def self.search_customer(id)
      cust_data = fetch_record
      check = false
      cust_data.each do |per_cust|
        if per_cust[0] == id
          puts "\nAcc#: #{per_cust[0]}"
          puts "Name: #{per_cust[1]}"
          puts "Phone#: #{per_cust[2]}"
          puts "Acc Type: #{per_cust[4]}"
          puts "Customer Bank Branch Code: #{per_cust[5]}"
          puts "Balance: #{per_cust[7]}"
          check = true
          break
        end
      end
      if check == false
        print ("\n***Customer Not Found\n")
      end
    end

    def self.update(id, balance)
      cust_data = fetch_record
      update_record = []
      remaining_record = []
      i = 0
      cust_data.each do |per_cust|
        if per_cust[0] == id
          per_cust[7] = balance
          update_record = per_cust
        else
          remaining_record[i] = per_cust
          i += 1
        end
      end
      remaining_record[i] = update_record
      update_record(remaining_record) ? print("\nTransection Successfully Done\n") : print("\nTransection Failed!\n")
    end

  
end

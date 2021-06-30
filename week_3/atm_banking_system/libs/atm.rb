require 'time'

class ATM

  @@check_transection = -1

  def withdraw(record, balance, amount)
    if balance <= 500
      return -1
    else
      balance -= amount
      @@check_transection = 0
      insert_transection(record, amount)
    end
    balance
  end

  def debit(record, balance, amount)
    balance += amount
    @@check_transection = 1
    insert_transection(record, amount)
    balance
  end

  def insert_transection(record, amount)
    begin
      if @@check_transection == 0
        @@check_transection = "Withdraw"
      elsif @@check_transection == 1
        @@check_transection = "Debit"
      end
      file = File.new('/home/traveller/Challenges Week 1/GitHub/week_3/atm_banking_system/data/transections.txt', 'a')
      file.print(record[0], " | " , record[4], " | ", record[5], " | ", @@check_transection, " | ", amount, " | ", Time.new, "\n")
      file.close
    rescue
      print("\n* Error in transection\n")
    end
  end

  def self.get_transections
    count = 1
    begin
      file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/atm_banking_system/data/transections.txt", 'r')
      file.each_line do |per_trans|
        print(count, ": ", per_trans, "\n")
      end
      file.close
    rescue
      print("\nError during fetching transections\n")
      file.close
    end
  end

end
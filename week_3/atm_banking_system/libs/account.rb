class Account

  def initialize(cust_name, phone, cust_dob, type, amount)
    @@name = cust_name
    @@phone_no = phone
    @@dob = cust_dob
    type == 1 ? @@acc_type = "Current" : @@acc_type = "Savings"
    @@acc_no= rand(9999) + 1
    @@initial_amount = amount
  end
  
  def insert_customer(branch, pin_code = "ATM-NA")
    if pin_code.to_s == '0'
      pin_code = "ATM-NA"
    end
    begin
      file = File.new('/home/traveller/Challenges Week 1/GitHub/week_3/atm_banking_system/data/customers.txt', 'a')
      file.print(@@acc_no, " | ", @@name, " | ", @@phone_no, " | ", @@dob, " | ", @@acc_type, " | ", branch, " | ", pin_code, " | ", @@initial_amount, "\n")
      file.close
      return true
    rescue
      return false
    end
  end

end
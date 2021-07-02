class Customer

  attr_accessor :user_name, :phone_no, :cnic
  
  def initialize(name, phone, cnic_no)
    self.user_name = name
    self.phone_no = phone
    self.cnic = cnic_no
  end
  
  private

    def self.fetch_data
      all_record = []
      check = false
      begin
        file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/customer.txt", "r")
        while cust_data = file.gets
          all_record << cust_data
          check = true
        end
        file.close
      rescue
        print "\n\n\t* Error occured during fetch data\n\n"
        check = false
        file.close
      end
      if check == false
        puts "\n\t\t*No customer found!\n\n"
        return nil
      end
      all_record
    end

  public

    def store_data
      begin
        file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/customer.txt", "a")
        file.print(user_name, " | ", phone_no , " | ", cnic, "\n")
        file.close
        puts "\n*** Data inserted successfully ***\n\n"

      rescue
        puts "\n*** Unable to insert data due to file error ***\n\n"
        file.close
      end
    end

    def self.get_customer_data
      cust_data = fetch_data
      if cust_data != nil
        count = 1
        print "\n\nRegistered Customers\n\n"
        cust_data.each do |i|
          print(count, ": ", i, "\n")
          count += 1
        end
      end
    end

end

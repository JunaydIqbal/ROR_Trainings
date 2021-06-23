#customer class

class Customer
  private
  attr_accessor :user_name, :phone_no, :cnic

  public
  def initialize(name, phone, cnic_no)
    self.user_name = name
    self.phone_no = phone
    self.cnic = cnic_no
  end
  
  def get_username
    user_name
  end

  def get_phone
    phone_no
  end

  def get_cnic
    cnic
  end

  def store_data
    begin
      file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/railway_reservation_system/data/customer.txt", "a")
      file.print(get_username, " | ", get_phone , " | ", get_cnic, "\n")
      file.close
      puts "\n*** Data insert successfully ***\n\n"

    rescue
      puts "\n*** Data didn't insert successfully, due to file error ***\n\n"
    end
  end

  
end

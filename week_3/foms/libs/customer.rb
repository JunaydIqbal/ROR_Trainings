class Customer
  
  attr_accessor :name, :phone_no

  def initialize(name, phone_no)
    self.name = name
    self.phone_no = phone_no
  end

  def save_record
    begin
      file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/foms/data/customers.txt", "a")
      file.print(name, " | ", phone_no, "\n")
      file.close
    rescue
      puts "\n\n*** Something went wrong during Customer record! ***\n\n"
    end
  end

end

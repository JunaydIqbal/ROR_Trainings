class Order

  attr_accessor :order_no, :items, :status

  def initialize(items)
    self.order_no = rand(100) + 1
    self.items = items
    self.status = "none"
  end

  def save_record
    begin
      file = File.new("/home/traveller/Challenges Week 1/GitHub/week_3/foms/data/orders.txt", "a")
      file.print(order_no, " | ", items, "\n")
      file.close
    rescue
      puts "\n\n*** Something went wrong during Order creation! ***\n\n"
    end
  end

  def self.display_all_orders
    i = 0
    begin
      file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/foms/data/orders.txt", "r")
      puts "\n\n* All Orders data\n"
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

end

require_relative '/home/traveller/Challenges Week 1/GitHub/week_3/order_system/libs/order'

class Order

  @@order_detail = Hash.new

  def initialize(number, from_location, to_location)
    store_order = Hash.new
    store_order[number.to_s] = Hash.new
    store_order[number.to_s]["location"] = from_location.to_s + " - " + to_location.to_s
    store_order[number.to_s]["status"] = "no status"
    insert(store_order, to_location)
  end

  private

    def insert(order_des, to_location)
      @@order_detail[to_location.to_s] = order_des
    end

  public

    def add_order(number, from_location, to_location)
      store_order = Hash.new
      store_order[number.to_s] = Hash.new
      store_order[number.to_s]["location"] = from_location.to_s + " - " + to_location.to_s
      store_order[number.to_s]["status"] = "no status"
      insert(store_order, to_location)
    end

    def sent_order(number)
      check = false
      @@order_detail.each do |key, o_num|
        if o_num.keys.join("") == number.to_s
          o_num.each do |key, values|
            values["status"] = "sent"
            print("\n\n* Sent your order!\n\n")
            return true
          end
        end
      end
      if check == false
        print("\n\n* No order found!\n")
      end
    end

    def receive_order(number)
      check = false
      @@order_detail.each do |key, o_num|
        if order_num.keys.join("") == number.to_s
          o_num.each do |key, values|
            values["status"] = "arrived"
            print("\n\n* Order is arrived!\n\n")
            return true
          end
        end
      end
      if check == false
        print("\n\n* No order found!\n")
      end
    end

    def display
      count = 0
      @@order_detail.each do |city, order_num|
        order_num.each do |key, detail|
          print("Order #{count + 1} Detail: ", "\n")
          print("Order#: ", order_num.keys.join(""), " | ", "Detail: ", detail, "\n")
          count += 1
        end
      end
    end
    
end

require_relative 'libs/order'

order_obj = Order.new("1122", "Lahore", "Islamabad")
order_obj.add_order("1133", "Karachi", "Peshawar")
order_obj.display
order_obj.sent_order(1122)
order_obj.display
#Problem
# Hash = {"Jan-21" => [["pen", 5], ["paper", 10], ["charts", 3], ["rubber", 2], ["glue", 1]]
#          Feb-21 => [["pen", 2], ["paper", -2], ["charts", 1], ["rubber", -2], ["glue", 2]
#            ...
#            ...
#          Dec-21 => [?????]

#         }

#output
#                     Pen    Paper     Charts      Rubber       Glue
# Jan-21 to Feb-21     7       8         4           0            3
# Mar-21 to Apr-21     ?       ?         ?           ?            ?
# ... til end of year


stock_data = {"Jan-21" => [["pen", 5], ["paper", 10], ["charts", 3], ["rubber", 2], ["glue", 1]],
              "Fab-21" => [["pen", 2], ["paper", -2], ["charts", 1], ["rubber", -2], ["glue", 2]],
              "Mar-21" => [["pen", 9], ["paper", 3], ["charts", 4], ["rubber", 8], ["glue", 4]],
              "Apr-21" => [["pen", -4], ["paper", 4], ["charts", 4], ["rubber", -3], ["glue", 3]],
              "May-21" => [["pen", 4], ["paper", 1], ["charts", 3], ["rubber", 2], ["glue", 1]],
              "Jun-21" => [["pen", -2], ["paper", 4], ["charts", 2], ["rubber", 2], ["glue", -1]],
              "Jul-21" => [["pen", 1], ["paper", 3], ["charts", 3], ["rubber", 3], ["glue", 4]],
              "Aug-21" => [["pen", 3], ["paper", 1], ["charts", -2], ["rubber", -2], ["glue", 3]],
              "Sep-21" => [["pen", 7], ["paper", 4], ["charts", 5], ["rubber", 3], ["glue", 2]],
              "Oct-21" => [["pen", -3], ["paper", -3], ["charts", 4], ["rubber", 2], ["glue", -1]],
              "Nov-21" => [["pen", 4], ["paper", 1], ["charts", 1], ["rubber", 2], ["glue", 8]],
              "Dec-21" => [["pen", 5], ["paper", 1], ["charts", 3], ["rubber", -1], ["glue", -3]]
              }


def convert_to_hash(arr)
  arr.to_h
end

def display(all_record)
  items = "\tPen  Paper  Charts  Rabbers  Glue"
  print("\t\t#{items}\n")
  all_record.each do |k ,v|
    print(k, "\t ", v.values[0],"     #{v.values[1]}", "      #{v.values[2]}", "        #{v.values[3]}", "      #{v.values[4]}", "\n")
  end
end

def sum_items(item_1, item_2)
  sum = 0
  tmp_hash = Hash.new
  item_1.each do |k, v|
    sum = v + item_2[k]
    sum < 0 ? sum *= (-1) : sum
    tmp_hash[k] = sum
  end
  tmp_hash
end

month = ""
sum = 0
stock = Hash.new
(0..10).step(2) do |i|
  month = stock_data.keys[i].to_s + " to " + stock_data.keys[i+1].to_s
  stock[month] = sum_items(convert_to_hash(stock_data[stock_data.keys[i]]), convert_to_hash(stock_data[stock_data.keys[i+1]]))
end

display(stock)

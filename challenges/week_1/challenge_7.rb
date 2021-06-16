# Problem Statemnet
# In this question you will be given a table as below, where the first row lists the names of products, and each of row after that lists the sales of the product for each day (over some time range).
# [
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ]
# Write a function that receives:
# A sales table sales_table as shown above.
# The name of a product product.
# ... and returns the total sales if the product is on the array, otherwise return the string "Product not found".
# Examples
# total_sales([
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ], "A") ➞ 9
# # 2 + 3 + 4 = 9
# total_sales([
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ], "C") ➞ 12
# # 1 + 6 + 5 = 12
# total_sales([
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ], "D") ➞ "Product not found"
# Notes
# The examples above all use the same sales table, but in the tests the table will vary.


def find_product(array, product)
    if array[0].include?(product)
        index = 0
        array[0].each do |i|
            if i == product
                return index
            else
                index += 1
            end
        end
    end
    -1
end

def total_sales(array, product)
    check_product = find_product(array, product)
    sum = 0
    count = 0
    if check_product >= 0
        i = 1
        while i < array.length do
            sum += array[i][check_product].to_i
            i += 1
        end
        # array.length.times do |i|
        #     if i > 0
        #         #puts i
        #         #print array[check_product][i]
        #         sum += array[i][check_product].to_i
        #     end
        # end
        return sum
    end

    "Product not found\n"
end


array = [
    ["A", "B", "C"],
    [ 2 ,  7 ,  1 ],
    [ 3 ,  6 ,  6 ],
    [ 4 ,  5 ,  5 ]
  ]

puts total_sales(array, "B")
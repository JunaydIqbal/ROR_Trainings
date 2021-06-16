# Problem: if word is matched with array so slice the string 


names_array = ["junaid", "moiz", "arslan", "noman"]
msg = "Hello i am junaid from university of lahore."

slice_ch = ""
check_index = 0
check = false
msg.each_char do |ch|
    if ch == ' ' || ch == ''
        names_array.each do |word|
            if word == slice_ch
                check = true
                break
            end
        end
    elsif check == true
        break
    else
        slice_ch += ch
        check_index += 1
    end
end

print check_index
#print msg.slice[0..check_index]
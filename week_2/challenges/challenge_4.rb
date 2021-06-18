# Problem: Vigenere Cipher Algo problem

def lookup_table
    alphabets = [*('a'..'z')]
    col = 0
    draw_table = []
    temp_row = ""
    start_col = [*('a'..'z')]
    index = -1
    temp_array = Array.new
    while index < (alphabets.length - 1) do
        if index < 0
            alphabets.unshift(start_col[index + 1])
            draw_table[index + 1] =  alphabets
            index += 1
            #alphabets.shift()
        elsif index == 0
            draw_table[index + 1] =  alphabets
            #temp_array = Array.new
            temp_array = alphabets
            #alphabets.shift()
            index += 1
        else
            # if index >= 2
            #     temp_array = temp_array.drop(1)
            #     temp_array = temp_array.rotate(1)
            #     temp_array.unshift(start_col[index])
            #     draw_table[index + 1] =  temp_array
            # else
            #     temp_array = temp_array.drop(1)
            #     temp_array = temp_array.rotate(index)
            #     temp_array.unshift(start_col[index])
            #     draw_table[index + 1] =  temp_array
            # #alphabets.shift()
            # end
            temp_array = temp_array.drop(1)
            temp_array = temp_array.rotate(1)
            temp_array.unshift(start_col[index])
            draw_table[index + 1] =  temp_array
            index += 1
        end
    end 
    draw_table
end

def find_row(array, ch)
    len = array.length
    index_find = 1
    while index_find < len do
        if array[index_find][0] == ch
            return index_find
        else
            index_find += 1
        end
    end
    -1
end

def find_col(array, ch)
    len = array.length
    index_find = 1
    while index_find < len do
        if array[0][index_find] == ch
            return index_find
        else
            index_find += 1
        end
    end
    -1
end

def convert_ciphertext(word, key = ([*('a'..'z')].join))
    if word != "" && key != ""
        draw_table = lookup_table
        word.downcase!
        key.downcase!
        key_array = []
        
        key_value_index = 0
        while key_value_index < word.length do
            if key_value_index == (key.length)
                key_value_index = 0
            elsif word.length == key_array.length
                break
            else
                key_array.push(key[key_value_index])
                key_value_index += 1
            end
        end

        cipher_array = []
        cipher_index = 0
        iterator_index = 0
        len_table = draw_table.length
        while iterator_index < word.length do
            row = find_row(draw_table, word[iterator_index])
            col = find_col(draw_table, key_array[iterator_index])
            if row != -1 && col != -1
                #print "(#{row}, #{col})\n"
                cipher_array[cipher_index] = draw_table[row][col]
                cipher_index += 1
                iterator_index += 1
            else
                return "Check your word or key, maybe you use other characters except alphabets\n"
            end
        end
        return "Encrypt in Cipher Text: " + cipher_array.join.upcase
        
    end
    "Invalid Inputs, check you word or key\n"
end

puts convert_ciphertext("MOIZ")





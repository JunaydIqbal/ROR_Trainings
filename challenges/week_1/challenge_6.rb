# Problem Statement
# A spoonerism is when the first letters / sounds of two words are transposed onto one another. Create a function that takes a two-word string and performs a spoonerism on the phrase.
# Examples
# spoonerise("history lecture") ➞ "listory hecture"
# spoonerise("loud noises") ➞ "noud loises"
# spoonerise("chow mein") ➞ "mow chein"
# spoonerise("edabit rules!") ➞ "redabit ules!"
# Notes
# Only two words will be parsed into the function. Don't worry about handling more than two.
# You won't always just have to swap the first letters, take care to notice which letters have been switched in the examples (notice the difference between vowel-starting and consonant-starting words).


# def check_spaces(word)
#     count_spaces = 0
#     word.each do |i|
#         if word[i] == ' '
#             count_spaces += 1
#         end
#     end
#     count_spaces
# end

def split_words(word)
    split = []
    str = ""
    word.length.times do |i|
        if word[i] == ' '
            split.push(str)
            str = ""
        elsif i == (word.length - 1)
            str += word[i]
            split.push(str)
            break
        else
            str += word[i]
        end
    end

    split
end

def spoonerise(word)
    vowel = ['a', 'e', 'i', 'o', 'u']
    first_word, last_word = ""
    new_string = "Invalid numbers of words\n"
    split = split_words(word)
    if word != '' && split.length == 2
        first_word = split[0]
        last_word = split[1]
        if vowel.include?(first_word[0]) && !vowel.include?(last_word[0])
            new_string = last_word[0] + first_word + " " + last_word[1..last_word.length]
        elsif !vowel.include?(first_word[0]) && vowel.include?(last_word[0])
            new_string = first_word[1..first_word.length] + " " + first_word[0] + last_word
        else
            new_string = last_word[0] + first_word[1..first_word.length] + " " + first_word[0] + last_word[1..last_word.length]
        end
        return new_string
    end
    new_string
end


result = spoonerise("edabit rules!")
print result
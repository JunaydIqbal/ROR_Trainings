# Problem: find the longest word from array

array = ["abc", "bdes", "jdih", "wnjsndj", "njs", "cikc"]
print array.inject{|m, word| m.length > word.length ? m : word}


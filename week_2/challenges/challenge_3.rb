#Problem
# In Mirror Cipher, encoding is done by switching message characters with its mirror opposite character of the key.
# Create a function that takes two arguments; a message and an optional key, and return the encoded message.
# There are some variations on the rules of encipherment. One version of the cipher rules are outlined below:
# message = "Mubashir Hassan"
# key = "edabitisamazing"
# mirror_cipher(message, key) ➞ "tuzishar hissid"
# Step 1: Replace all characters of the given message with mirror character in the key:
# M = t, # 't' is mirror character of 'M'
# u = u, # 'u' is not part of the key
# b = z, # 'z' is mirror character of 'b'
# a = i, and so on ...
# Step 2: Return encoded message in lower case:
# "tuzishar hissid"
# If optional key is not given, consider the whole alphabet as a default (i.e. key = "abc..z").
# Examples
# mirror_cipher("Mubashir Hassan", "edabitisamazing") ➞ "tuzishar hissid"
# mirror_cipher("Matt MacPherson") ➞ "nzgg nzxksvihlm"
# mirror_cipher("Airforce is best", "pilot") ➞ "aorfirce os besp"


def find_mirror(ch, key)
    rev = key.reverse
    find_index = 0
    key.length.times do |i|
        if ch == key[i]
            find_index = i
            break
        end
    end
    rev[find_index]
end

def mirror_cipher(msg, key)
    msg.downcase!
    msg.length.times do |i|
        if msg[i] != ' '
            msg[i] = find_mirror(msg[i], key)
        else
            msg[i] = ' '
        end
    end
    msg
end

msg = "Matt MacPherson"
key = "abcdefghijklmnopqrstuvwxyz"
puts mirror_cipher(msg, key)
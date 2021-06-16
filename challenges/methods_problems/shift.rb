#Problem 1: if user enter manually @gmail.com so remove it from string and if number 
# emails limit upto 3 so remove first username


def split_emails(email)
    name = ""
    email.each_char do |ch|
        if ch == '@'
            return name
        else
            name += ch
            #find_index += 1
        end
    end
    name
end


email = "junaid12@gmail.com"
email2 = "moiz1516@hotmail.com"
email3 = "hamza@outlook.com"
temp_array = []

temp_array.push(split_emails(email))
temp_array.push(split_emails(email2))
temp_array.push(split_emails(email3))
#find_index = 0

#email_service = email.slice(find_index..email.length)

print "Usernames: \n", temp_array, "\n"

print temp_array.shift
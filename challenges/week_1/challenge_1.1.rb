# Challenge 1

def hacker_speak(str = "Hello")
    
    (str.length).times do |i|
        case str[i]
        when 'a'
            str[i]='4'
        when 'e'
            str[i]='3'
            
        when 'i'
            str[i]='1'
            
        when 'o'
            str[i]='0'
            
        when 's'
            str[i]='5'
        end
        
    end
    return str
end

result = hacker_speak ("javascript is cool")
puts result
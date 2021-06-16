#Problem:
#aliases of to_s
def apocalyptic(num)
    index_string = (2**num).to_s
    msg = "Crisis averted. Resume sinning."

    index_string.length.times do |i|
        if index_string[i] == '6' && index_string[i+1] == '6' && index_string[i+2] == '6'
            msg = "Repent! " + i.inspect + " days until the Apocalypse!"
            break
        end
    end
    msg
end

print apocalyptic(220)
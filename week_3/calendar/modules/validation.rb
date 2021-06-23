module Validation
  def valid_inputs
    print "\nEnter the year (2 or 4 digits format i.e. 2021, 20 etc.): "
    input_year = gets.chomp
    #print "\n"
    if input_year.length == 4
        if input_year.to_i >= 1970 && input_year.to_i <= 2070
            return input_year.to_i
        else
            puts "\nInvalid year! (Years ranges: 1970 - 2070), try again!"
            valid_inputs
        end
    elsif input_year.length == 2
        if input_year.to_i >= 70
            puts "\nWhich year do you want to choose: "
            print "1. 19#{input_year},\t2. 20#{input_year}: "
            choose_choice = gets.chomp.to_i
            if choose_choice == 1
                return ("19" + input_year).to_i
            elsif choose_choice == 2
                return ("20" + input_year).to_i
            else
                puts "\nYou've entered invalid input, try again!"
                valid_inputs
            end
        elsif input_year == "00"
            puts "\nThe range of calendar is 1970 - 2070, so your match will be 20#{input_year}"
            return ("20" + input_year).to_i
        elsif input_year.to_i < 70
            puts "\nThe range of calendar is 1970 - 2070, so your match will be 20#{input_year}"
            return ("20" + input_year).to_i
        else
            puts "\nInvalid input format, try again!"
            valid_inputs
        end
    else
        puts "\nInvalid format, try again!"
        valid_inputs
    end
  end
  
end

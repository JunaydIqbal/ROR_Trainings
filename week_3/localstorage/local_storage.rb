lines = ['How are you?', 'Where are you from?', 'What should I do?']

# f = File.new("./my_file.txt", "w")
# lines.each{|e| f.puts(e)}
# f.close


line2 = []

begin
  file = File.open("/home/traveller/Challenges Week 1/GitHub/week_3/my_file.txt", "r")
  while line = file.gets
    line2<<line
  end
  file.close

rescue
  print "no file found"

end


line2.each{|l|puts l} 
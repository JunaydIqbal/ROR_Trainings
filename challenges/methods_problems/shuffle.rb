#Problem 1: 2 students attempt exam and shuffle the questions


question = ["What is your name?", "How are you?", "How old are you?", "Are you single?"]

2.times do |user|
    print "\n\nFor user #{user+1}: ", question.shuffle!.join(" \n")
end
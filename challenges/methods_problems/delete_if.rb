#Problem: show the players scores of greater than and equal to 100

players = {junaid: 89, moiz: 120, arslan: 144, salman: 99, hamza: 100}

players.delete_if{|name, score| score < 100}

print players
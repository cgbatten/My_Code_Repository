letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
points = [1, 3, 3, 2, 1, 4, 2, 4, 1, 8, 5, 1, 3, 4, 1, 3, 10, 1, 1, 1, 1, 4, 4, 8, 4, 10]

letter_to_points = {key: value for key, value in zip(letters, points)}

letter_to_points[" "] = 0
print(letter_to_points)

def score_word(word):
  point_total = 0

  # Python is case sensitive. Use upper to make letters the same case
  for letter in word.upper():
    if letter in letter_to_points:
      point_total += letter_to_points[(letter.upper())]

  return point_total

print(score_word("BROWNIE"))

player_to_words = {"player1": ["BLUE","TENNIS","EXIT"], "wordNerd": ["EARTH","EYES","MACHINE"], "LExi Con": ["ERASER","BELLY","HUSKY"],"Prof Reader": ["ZAP","COMA","PERIOD"]}

player_to_points = {}

for player in player_to_words:
  player_points = 0
  for word in player_to_words[player]:
    player_points += score_word(word)

  # print(player + ": " + str(player_points))
  player_to_points[player] = player_points

print(player_to_points)




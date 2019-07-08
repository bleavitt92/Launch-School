# input: array of cards for fouls on each team and player 
# # ex ['A7Y', 'A8R', 'B2Y']
# output: array telling how many left on each team [#A team, #Bteam]
# Rules: each team starts with 11 players
# if get a red flag, you're gone
# if get two yellow flags, you're gone
# organize the teams into two hashes
  # hashA = { '1' => 0, '2' => 0, etc}
  # if get a red flag, add 2 to the value. yellow flag, add 1 to the value
  # cards array example: ['A7Y', 'A8R', 'B2Y']. Need to iterate over that array and use just one card at a time
  # iterate over each card and if card[0] == 'A' && card[2] == 'Y', add 1 to hash[card[1]] value


  # if value == 2, delete that key-value pair
  # use .select to find any values that == 2 and delete those

# use hash.keys.count to determine how many left on each team
# def initiate_hash
#   hash = {}
#   ('1'..'11').each { |player_num| hash[player_num] = 0 }
#   hash
# end 

# def men_still_standing(cards)
#   team_a = initiate_hash
#   team_b = initiate_hash
#   cards.each do |card|
#     if card[0] == 'A'
#       team_a[card[1]] += 1 if card[2] == 'Y'
#       team_a[card[1]] += 2 if card[2] == 'R'
#     elsif card[0] == 'B'
#       team_b[card[1]] += 1 if card[2] == 'Y'
#       team_b[card[1]] += 2 if card[2] == 'R'
#     end
#   end
#   p team_a
#   p team_b
#   team_a.delete_if { |k, v| v >=2 }
#   team_b.delete_if { |k, v| v >=2 }
#   [team_a.keys.count, team_b.keys.count]
# end

# p men_still_standing(["A4R", "A6R", "A8R"])

# sort strings
# input: two strings. String 1 gets sorted, String 2 sets the sort rule
# output: sorted string
# need an output string to add items to
# split string1 into an array of letters using .chars
# split string 2 as well using .chars
# iterate over string 1 and compare to string2[0]. if equal, add to output string. 
# then reiterate over string 1 and compare to string2[1], etc.

def sort_string(string1, string2)
  output = ''
  array1 = string1.chars
  array2 = string2.chars

  array2.each do |sorter|
    array1.each do |letter|
      if letter == sorter
        output << letter
      end
    end
  end
  array1.each do |letter|
    if !output.include?(letter)
      array1.count(letter).times { output << letter }
    end
  end
  output
end

p sort_string('banana', 'a') #== 'aaabnn'
### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame
#missing def initialize for card

  def checkforAce(card) #Shouldn't be camelCase for function
    if card.value = 1 #double == to check if it equals
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #typo, should be def, card1 comma card2 in parentheses
  if card1.value > card2.value
    return card #card1
  else
    return card2
  end
end
end #this end should be at the end to finish with the class

def self.cards_total(cards) #self now not gonna work on the class because it's disconnected with end
  total # should be assigned to 0
  for card in cards
    total += card.value
    return "You have a total of" + total #should be one level lower if you don't want every single time printed "You have a total of", it's gonna loop through text as well. Also total.to_s() to have good string concatenation. 
  end
end
```

require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../card_game')
require_relative('../card')
class TestCardGame < Minitest::Test

  def setup()
    @card1 = Card.new("Diamond", 7)
    @card2 = Card.new("Club", 2)
    @card3 = Card.new("Diamond", 1)
    @cards = [@card1,@card2,@card3]
    @cardgame = CardGame.new(@cards)
  end

  def test_value
    assert_equal(7, @card1.value)
  end
  def test_suit
    assert_equal("Club", @card2.suit)
  end

  def test_check_for_ace()
    result = @cardgame.check_for_ace(@card1)
    assert_equal(false, result)
  end

  def test_highest_card
    assert_equal(@card1, @cardgame.highest_card(@card1, @card2))
  end

  def test_cards_total
    assert_equal("You have a total of 10", CardGame.cards_total(@cards))
  end
end

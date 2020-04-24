require('minitest/autorun')
require('minitest/reporters')
require('pry-byebug')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card')
require_relative('../card_game')

class CardGameTest < Minitest::Test
    def setup
        @game = CardGame.new(@cards)

        @card1 = Card.new('hearts', 10)
        @card2 = Card.new('clubs', 5)
        @card3 = Card.new('spades', 1)

        @cards = [@card1, @card2, @card3]
    end

    def test_check_for_ace
        assert_equal(true, @game.checkforAce(@card1))
    end

    def test_highest_card
        result = @game.highest_card(@card1, @card2)
        assert_equal(result, @card1)
    end

   

    def test_cards_total
        result = CardGame.cards_total(@cards)
       
        assert_equal('You have a total of 16', result)
    end

 
end
gem 'minitest'
require 'minitest/autorun'

class ReducePatternTest < Minitest::Test

  def test_sum_a_list_of_numbers
    numbers = [32, 1, 21, 5, 81, 333]
    sum = 0
    numbers.each do |number|
      sum = sum + number
    end
    assert_equal 473, sum
  end

  def test_subtract_list_of_numbers
    numbers = [28, 12, 38, 1, 91]
    difference = 0
    numbers.each do |number|
      difference -= number
    end
    assert_equal -170, difference
  end

  def test_multiply_list_of_numbers
    numbers = [2, 3, 5, 7]
    product = 1
    numbers.each do |number|
      product *= number
    end
    assert_equal 210, product
  end

  def test_capitalize_keywords_in_phrase_one_fish_two_fish_red_fish_blue_fish
    keywords = ["fish", "blue"]
    phrase = 'one fish two fish red fish blue fish'
    result = []
    phrase.split.each do |word|
      if keywords.include?(word)
        result << word.upcase
      else
        result << word
      end
    end
    phrase = result.join(' ')
    assert_equal 'one FISH two FISH red FISH BLUE FISH', phrase
  end

  def test_divide_560_by_a_bunch_of_numbers
    numbers = [2, 2, 2, 5, 7]
    quotient = 560
    numbers.each do |number|
      quotient = quotient / number
    end

    assert_equal 2, quotient
  end

  def test_subtract_smallest_values_from_100
    elements = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
    difference = 100
    smallest_from_elements = []
    smallest_summed = 0
    elements.each do |list|
      smallest_from_elements << list.sort.first
    end
    smallest_from_elements.each do |number|
      smallest_summed += number
    end
    difference -= smallest_summed
    assert_equal 88, difference
  end

  def test_add_all_the_second_values_together
    elements = [["a", 1], ["b", 9], ["c", 21]]
    values_from_elements = []
    sum = 0
    elements.each do |array|
      values_from_elements << array.last
    end
    values_from_elements.each do |integer|
      sum += integer
    end
    assert_equal 31, sum
  end

end

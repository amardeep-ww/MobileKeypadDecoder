require 'pry'

class Moblile_keypad_decoder

  @@letters_hash = {
    '2' => %w(a b c),
    '3' => %w(d e f),
    '4' => %w(g h i),
    '5' => %w(j k l),
    '6' => %w(m n o),
    '7' => %w(p q r s),
    '8' => %w(t u v),
    '9' => %w(w x y z)
  }

  def initialize(phone_number)
    combinations = split_number(phone_number)
    decoded_words = load_dictionary
    decode(combinations, decoded_words)
  end

  def split_number(phone_number)
    combinations = []
    combinations << array_split(phone_number, 3)
    combinations << array_split(phone_number, 4)
    combinations << array_split(phone_number, 5)
    combinations << array_split(phone_number, 6)
    combinations << array_split(phone_number, 7)
    combinations << array_split(phone_number, 10)
    combinations
  end

  def array_split(phone_number, length)
    [phone_number.slice(0, length), phone_number.slice(length, 10 - length)]
  end

  def load_dictionary
    File.read('dictionary.txt').downcase.split("\n")
  end

  def find_all_permutations(combination, decoded_words)
    arr = []
    combination.each do |x|
      unless x.empty?
        words = get_words(x, decoded_words)
        arr.push(words)
      end
    end
    arr
  end

  def get_words(number, decoded_words)
    words = []
    x = []
    number.split('').each do |var|
      x.push(@@letters_hash[var])
    end

    unless x.empty?
      x[0].product(*x[1..-1]).each do |val|
        word = val.join
        words.push(word) if decoded_words.include? word
      end
    end
    words
  end

  def decode(combinations, decoded_words)
    result = []
    combinations.each do |combination|
      arr = []
      words = find_all_permutations(combination, decoded_words)
      arr.push(words) unless words.include?([])
      result.concat(arr) unless arr.empty?
    end
  end

end
Moblile_keypad_decoder.new('2282668625')

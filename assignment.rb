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

end
Moblile_keypad_decoder.new('2282668625')

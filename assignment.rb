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
    # initialization and business logic
  end
end
Moblile_keypad_decoder.new('2282668625')



require 'enumerator'

module RomanTranslator
  def self.included(target)
    return if target != Integer && target != String

    func_name = 'to_roman'
    call_func = 'to_roman_from_number'
    func_name = 'from_roman' if target == String
    call_func = 'to_number_from_roman' if target == String

    target.class_eval <<-ruby_eval, __FILE__, __LINE__ + 1
      def #{func_name}
        #{call_func}(self)
      end
    ruby_eval
  end

  private

  NUM_TO_ROM = {
    1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD',
    100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL',
    10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV',
    1 => 'I'
  }

  ROM_TO_NUM = NUM_TO_ROM.invert

  def to_roman_from_number(num)
    return '' if num <= 0 || num >= 4000

    roman_numeral = ''
    NUM_TO_ROM.each do |value, roman|
      while num >= value
        roman_numeral += roman
        num -= value
      end
    end
    roman_numeral
  end
end

def to_number_from_roman(roman)
  result = 0
  previous_value = 0
  roman.each_char do |char|
    value = RomanTranslator::ROM_TO_NUM[char]
    return 'Número romano inválido' if value.nil?
    if value > previous_value
      result += value - 2 * previous_value
    else
      result += value
    end
    previous_value = value
  end
  result
end

class Integer
  include RomanTranslator
end

class String
  include RomanTranslator
end

# Teste de conversão
puts 99.to_roman
puts to_number_from_roman("CIXX")


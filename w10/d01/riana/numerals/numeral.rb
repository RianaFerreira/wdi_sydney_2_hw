class Numeral
  # Takes a Roman numeral string and returns the integer it represents.
  def self.roman_to_integer(str)
    # check that str is a roman numeral
    # take each char
    # build integer based on individual characters
    # display the integer
    DIGITS = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
    }
  end

  # Takes an integer and returns the equivalent Roman numeral string.
  def self.integer_to_roman(n)
    # check that n is an integer
    # convert it to a string
    # check the length
    # build the roman numeral string
    # display the string
    ROMAN_MAP = { 1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M"}
  end
end


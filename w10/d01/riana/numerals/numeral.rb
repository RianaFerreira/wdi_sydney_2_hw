class Numeral
  def initialize
    @mapping = {
        1 => "I",
        2 => "II",
        3 => "III",
        4 => "IV",
        5 => "V",
        6 => "VI",
        7 => "VII",
        8 => "VIII",
        9 => "IX",
        10 => "X"
    }
  end

  def roman_to_integer (roman)
    @mapping.invert[roman]
  end

  def integer_to_roman(digit)
    @mapping[digit]
  end
end


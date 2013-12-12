# require "numeral"

describe Numeral do
  describe "#roman_to_integer"  do |str|
    it "accepts a roman numeral and converts it to a number" do
      Numeral.roman_to_integer("V").should == 5
    end
    it "checks that the str is a roman numeral" do
      #
    end
    it "take each character and build an integer" do
      #
    end
    it "should display the converted number" do
      #
    end
  end
  describe "#integer_to_roman" do |n|
    it "it accepts an integer and coverts it to a roman numeral" do
      #
    end
    it "checks that n is an integer and converts it to a string" do
      #
    end
    it "builds the roman numeral string" do
      #
    end
    it "shoud display the converted numerl" do
      #
    end
  end
end
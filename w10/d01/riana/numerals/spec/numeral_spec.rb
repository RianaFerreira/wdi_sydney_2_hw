require_relative './spec_helper.rb'
require_relative '../numeral.rb'

describe "Numeral" do
  # create a new instance of the Numeral class to access the methods
  let(:numeral) { Numeral.new() }


  describe "#roman_to_integer"  do
    it { numeral.should respond_to :roman_to_integer }

    it "should convert I to 1" do
      expect(numeral.roman_to_integer("I")).to eq 1
    end

    it "should convert II to 2" do
      expect(numeral.roman_to_integer("II")).to eq 2
    end

    it "should convert III to 3" do
      expect(numeral.roman_to_integer("III")).to eq 3
    end

    it "should convert III to 4" do
      expect(numeral.roman_to_integer("IV")).to eq 4
    end

    it { numeral.roman_to_integer("V").should eq 5 }
    it { numeral.roman_to_integer("VI").should eq 6 }
    it { numeral.roman_to_integer("VII").should eq 7 }
    it { numeral.roman_to_integer("VIII").should eq 8 }
    it { numeral.roman_to_integer("IX").should eq 9 }
    it { numeral.roman_to_integer("X").should eq 10 }

  end

  describe "#integer_to_roman" do
    it { numeral.should respond_to :integer_to_roman }

    it "should convert 1 to I" do
      expect(numeral.integer_to_roman(1)).to eq "I"
    end

    it { numeral.integer_to_roman(2).should eq "II" }
    it { numeral.integer_to_roman(3).should eq "III" }
    it { numeral.integer_to_roman(4).should eq "IV" }
    it { numeral.integer_to_roman(5).should eq "V" }
    it { numeral.integer_to_roman(6).should eq "VI" }
    it { numeral.integer_to_roman(7).should eq "VII" }
    it { numeral.integer_to_roman(8).should eq "VIII" }
    it { numeral.integer_to_roman(9).should eq "IX" }
    it { numeral.integer_to_roman(10).should eq "X" }
  end

end
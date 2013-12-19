class Number

  def self.hex2rgb(hex_string)
    result = ""
    r = ""
    g = ""
    b = ""

    if hex_string.length > 4
      # split the string up into 3 sections
      r = (@hex.invert[hex_string[1,2].slice(0)].to_i * 16 ) + (@hex.invert[hex_string[1,2].slice(1)].to_i)
      g = (@hex.invert[hex_string[3,2].slice(0)].to_i * 16 ) + (@hex.invert[hex_string[1,2].slice(1)].to_i)
      b = (@hex.invert[hex_string[5,2].slice(0)].to_i * 16 ) + (@hex.invert[hex_string[1,2].slice(1)].to_i)
      result = "#{r}, #{g}, #{b}"
    else
      r = (@hex.invert[hex_string[1,1].slice(0)].to_i * 16 ) + (@hex.invert[hex_string[1,1].slice(0)].to_i)
      g = (@hex.invert[hex_string[2,1].slice(0)].to_i * 16 ) + (@hex.invert[hex_string[2,1].slice(0)].to_i)
      b = (@hex.invert[hex_string[3,1].slice(0)].to_i * 16 ) + (@hex.invert[hex_string[3,1].slice(0)].to_i)
      result = "#{r}, #{g}, #{b}"
    end
  end

  def self.rgb2hex(rgb_string)
    result = ""
    rgb_array = rgb_string.split(", ")
    r_first = (rgb_array[0].to_f / 16).to_s.split(".")[0]
    r_second = (".#{(rgb_array[0].to_f / 16).to_s.split(".")[1]}".to_f * 16).to_i.to_s

    g_first = (rgb_array[1].to_f / 16).to_s.split(".")[0]
    g_second = (".#{(rgb_array[1].to_f / 16).to_s.split(".")[1]}".to_f * 16).to_i.to_s

    b_first = (rgb_array[2].to_f / 16).to_s.split(".")[0]
    b_second = (".#{(rgb_array[2].to_f / 16).to_s.split(".")[1]}".to_f * 16).to_i.to_s

    result = "##{@hex[r_first]}#{@hex[r_second]}#{@hex[g_first]}#{@hex[g_second]}#{@hex[b_first]}#{@hex[b_second]}"
  end

  def self.bin2dec(binary_string)
    result = 0
    exponent = 0

    binary_string.reverse.split('').each do |digit|

      if digit == '1'
        result += 2 ** exponent
      end

      exponent += 1
    end

    result
  end

  # alternative syntax
  # def self.moderatebin2dec(binary_string)
  #   result = binary_string.reverse.split('').each_with_index.map do |digit, i|
  #     digit.to_i * (2 ** i)
  #   end
  #   result.reduce(:+)
  # end

  # model class solution
  # def self.fancybin2dec(binary_string)
  #   binary_string.reverse.split('').each_with_index.map{|c,i| (c.to_i * (2**i)).reduce(:+)}
  #   #[1,2,3,5,77].reduce(:+) output 88
  #   #[1,2,3,5,77].reduce(:/) output 0
  #   #[1,2,3,5,77].reduce(:*) output 2310
  #   #[1,2,3,5,77].reduce(:<<) output 154742504.....
  # end

  def self.dec2bin(decimal_number)
    binary_array = []
    # covert decimal to string
    while decimal_number > 0
      binary_array << decimal_number % 2
      decimal_number = decimal_number / 2
    end
    binary_array.reverse.join
  end

  def self.bin2hex(binary_string)
    result = ""
    binary_array = []
    binary_string = binary_string.reverse

    # loop through the binary and slice out quads
    while binary_string.size > 0
      quad = binary_string.slice!(0,4)
      binary_array << quad.reverse
    end

    # take each binary value
    binaries = @hexadecimals.invert

    binary_array.reverse.each do |quad|
      while quad.length < 4
        quad = '0' + quad
      end

      if binaries.has_key?(quad)
        result << binaries[quad]
      end

    end

    result
  end

  def self.hex2bin(hexadecimal_string)
    result = ""
    i = 0
    # take each digit in string

    hexadecimal_string.split('').each do |digit|
      #if @hexadecimals.has_key?(digit)
        result << @hexadecimals[digit]
      #end
    end

    result
  end

  private
  @hexadecimals = {
    "0" => "0000",
    "1" => "0001",
    "2" => "0010",
    "3" => "0011",
    "4" => "0100",
    "5" => "0101",
    "6" => "0110",
    "7" => "0111",
    "8" => "1000",
    "9" => "1001",
    "a" => "1010",
    "b" => "1011",
    "c" => "1100",
    "d" => "1101",
    "e" => "1110",
    "f" => "1111"
  }

  @hex = {
    "0" => "0",
    "1" => "1",
    "2" => "2",
    "3" => "3",
    "4" => "4",
    "5" => "5",
    "6" => "6",
    "7" => "7",
    "8" => "8",
    "9" => "9",
    "10" => "a",
    "11" => "b",
    "12" => "c",
    "13" => "d",
    "14" => "e",
    "15" => "f"
  }

end

require 'spec_helper'

describe Number do
  describe '.bin2dec' do
    it 'converts binary to decimal' do
      expect(Number.bin2dec('1101')).to eq 13
      expect(Number.bin2dec('1111')).to eq 15
    end
  end

  describe '.dec2bin' do
    it 'converts decimal to binary' do
      expect(Number.dec2bin(13)).to eq('1101')
    end
  end

  describe '.bin2hex' do
    it 'converts binary to hexidecimal' do
      expect(Number.bin2hex('11110000')).to eq('f0')
      expect(Number.bin2hex('1110000')).to eq('70')
      expect(Number.bin2hex('10')).to eq('2')
    end
  end

  describe '.hex2bin' do
    it 'converts hexidecimal to binary' do
      expect(Number.hex2bin('f0')).to eq('11110000')
    end
  end

  describe '.hex2rgb' do
    it 'converts full css hex color code to rgb' do
      expect(Number.hex2rgb('#ffffff')).to eq('255, 255, 255')
      expect(Number.hex2rgb('#fff')).to eq('255, 255, 255')
    end
  end

  describe '.rgb2hex' do
    it 'converts rgb to full css hex color code' do
      expect(Number.rgb2hex('255, 255, 255')).to eq('#ffffff')
    end
  end

end

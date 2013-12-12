# Get the content file
#puts "Enter your file name: "
#filename = STDIN.gets.chomp()
#puts "Lookup word: "
#lookup = STDIN.gets.chomp()


filename = "flintstone.txt"
txt = File.open(filename)
print "#{'*' * 50}\n"
puts "Content of file #{filename}"
print "#{'*' * 50}\n"

#puts txt.read()
txt.each_line { |line| puts line if (/\bwilma\b/ =~ line && /\bfred\b/ =~ line) }

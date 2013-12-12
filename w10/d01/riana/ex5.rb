# Get the content file
#puts "Enter your file name: "
#filename = STDIN.gets.chomp()
filename = "flintstone.txt"
txt = File.open(filename)
print "#{'*' * 100}\n"
puts "Content of file #{filename}"
print "#{'*' * 100}\n"

#puts txt.read()

#puts "Lookup word: "
#lookup = STDIN.gets.chomp()
txt.each_line { |line| puts line if /(.)\1/ =~ line }


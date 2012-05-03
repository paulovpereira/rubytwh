filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening the file..."
#o mode "w" significa que o arquivo será aberto no modo
#escrita deletando seu conteúdo automaticamente
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
#Logo não precisa do truncate
#target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."
formatter = "%s\n%s\n%s\n"

target.write(formatter % [line1, line2, line3])
#target.write("\n")
#target.write(line2)
#target.write("\n")
#target.write(line3)
#target.write("\n")

puts "And finally, we close it."
target.close()
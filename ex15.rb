puts "I'll ask you to type the file name:"
prompt = "> "
print prompt
filename = STDIN.gets.chomp()
if File.exist?(filename)
	txt = File.open(filename)
	puts "Here's your file: #{filename}"
	puts txt.read()
	txt.close
else
	puts "Arquivo nao encontrado."
end

puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp()

if File.exist?(file_again)
	txt_again = File.open(file_again)
	puts txt_again.read()
	txt_again.close 
else
	puts "Arquivo nao encontrado."
end
print "How old are you? "
age = gets.chomp()
print "How tall are you? "
height = gets.chomp()
print "How much do you weight? "
weight = gets.chomp()

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

print "Vamos testar o chomp? \nDigite 'Teste': "
#Chomp remove quebra de linha que o gets coloca automaticamente
a = gets
puts "%s Teste".chomp("ste") % a
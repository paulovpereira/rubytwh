require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|
	f.each_line do |line| 
		p line
	end
	puts f.base_uri
	puts f.content_type
	puts f.charset
	puts f.content_encoding
	puts f.last_modified
end

#Resposta da 2: sim
#Resposta da 3: da pasta onde está o gemset utilizado pelo interpretador
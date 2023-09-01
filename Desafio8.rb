require 'nokogiri'
require 'net/http'

# Você realizou uma requisição para o site example
https = Net::HTTP.new('example.com', 443)

# Para fazer chamadas HTTPS
https.use_ssl = true

response = https.get('/')

doc = Nokogiri::HTML(response.body)

desafio = doc.at('p')

puts desafio.content

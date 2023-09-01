texto = 'Olá, tudo bem? Meu WhatsApp é: (99)9 9999-9999'
match = /\(\d{2}\)\d \d{4}-\d{4}/.match(texto)

if match
  puts "Número de WhatsApp válido: #{match[0]}"
else
  puts "Número de WhatsApp inválido."
end

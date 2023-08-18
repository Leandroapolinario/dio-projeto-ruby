#Criar um array vazio, para que o usário insira 3 números e no final apareça o resultado desses 3 números elevados a 3ª potência

numeros = []

i = 1

1..3.times do
print "Digite o #{i}º número: "
numeros.push gets.chomp.to_i
i += 1
end

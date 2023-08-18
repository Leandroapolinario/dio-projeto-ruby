#Desafio
#Você precisa criar uma calculadora, onde terão 5 opções (soma, subtração, multiplicação, divisão e sair) e precisa sair o resultado do cálculo escolhido pelo usuário

resultado = ''

loop do

  puts resultado
  puts 'Selecione uma opção'
  puts '1 - Soma.'
  puts '2 - Subtração.'
  puts '3 - Multiplicação.'
  puts '4 - Divisão.'
  puts '0 - Sair.'

  print 'Digite sua escolha'

  opcao = gets.chomp.to_i

  case opcao
  when opcao == 1
    print "Digite o primeiro número:"
    num1 = gets.chomp.to_i
    print "Digite o segundo número"
    num2 = gets.chomp.to_i
    soma = num1 + num2
    puts soma
    
  when opcao == 2
    print "Digite o primeiro número:"
    num1 = gets.chomp.to_i
    print "Digite o segundo número"
    num2 = gets.chomp.to_i
    subt = num1 - num2
    puts subt

  when opcao == 3
    print "Digite o primeiro número:"
    num1 = gets.chomp.to_i
    print "Digite o segundo número"
    num2 = gets.chomp.to_i
    mult = num1 * num2
    puts mult
  
  when opcao == 4
    print "Digite o primeiro número:"
    num1 = gets.chomp.to_i
    print "Digite o segundo número"
    num2 = gets.chomp.to_i
    divi = num1 / num2
    puts divi

 when opcao == 0
    break

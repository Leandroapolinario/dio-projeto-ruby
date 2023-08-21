# Criar um programa de consulta de CPF
# Usar biblioteca especial para saber se os números digitados são de um CPF verdadeiro

require "cpf_cnpj"

def check_cpf(cpf_number)
 if CPF.valid?(cpf_number)
   return "O CPF é válido"
 else
   return "O CPF é inválido"
 end
end

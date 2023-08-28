require_relative 'produto'
require_relative 'mercado'

produto = Produto.new
produto.nome = 'Cebola'
produto.preco = 1.35

Mercado.new(produto.nome, produto.preco).comprar

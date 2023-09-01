class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: 'Livro criado com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: 'Livro atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Livro excluído com sucesso.'
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :rating, :description)
  end
end

# Primeiro livro
book1 = Book.create(
  title: "A Longa Viagem a um Pequeno Planeta Hostil",
  author: "Becky Chambers",
  rating: 10,
  description: "A tripulação da nave espacial Andarilha é composta por indivíduos de planetas, espécies e gêneros diferentes, incluindo uma piloto reptiliana, uma estagiária nascida nas colônias de Marte e um médico de gênero fluido, que transita entre o masculino e o feminino ao longo da vida. Temas como amizade, racismo, poliamor, força feminina e novos conceitos de família fazem parte do universo do livro, assim como cada vez mais fazem parte do nosso mundo. Becky Chambers segue os passos da pioneira Ursula K. Le Guin (A Mão Esquerda da Escuridão e Despossuídos), e inclusive presta homenagem à inventora do ansible, um dispositivo de comunicação interplanetária, em sua obra. A visão feminina e acurada de autoras como Becky e Ursula permite desconstruir velhos clichês e quem sai ganhando são os amantes da literatura sci-fi ― de todos os gêneros e espécies."
)

# Segundo livro
book2 = Book.create(
  title: "Os Registros Estelares de uma Notável Odisseia Espacial",
  author: "Becky Chambers",
  rating: 7.5,
  description: "Séculos atrás, os últimos humanos deixaram a Terra em busca de um novo lar. Hoje, a Frota do Êxodo é uma relíquia viva, um lugar de onde muitos vieram, mas que poucos conheceram. À medida que seus tripulantes decidem ir viver em cidades alienígenas ou colônias terrestres, os que optam por permanecer nessa comunidade extremamente frágil começam a se perguntar: qual o propósito de uma nave que chegou ao seu destino? Por que continuar no espaço quando há tantos mundos habitáveis para se viver? Qual o preço de manter esse estilo de vida? Vale a pena fazer isso? Assim como os outros títulos da série Wayfarers, Os Registros Estelares de uma Notável Odisseia Espacial é uma história independente que dialoga com o rico universo criado por Becky Chambers. Ou seja, o livro pode ser lido tanto por quem já acompanha a autora quanto pelos novos leitores que querem se apaixonar por ficção científica. A trama desta nova aventura se inicia a partir dos eventos finais de A Longa Viagem a um Pequeno Planeta Hostil e acompanha o cotidiano de um pequeno grupo que vive no espaço."
)

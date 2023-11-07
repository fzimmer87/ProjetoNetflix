class FlixInicio #classePrincial-mae
    attr_accessor :titulo, :ano_lancamento, :genero, :duracao, :classificacao #attr criaGettereSetter
  
    def initialize(titulo, ano_lancamento, genero, duracao, classificacao) #metodoqueCriaVariaveisdeInstancia
      @titulo = titulo
      @ano_lancamento = ano_lancamento
      @genero = genero
      @duracao = duracao
      @classificacao = classificacao
    end
end

  
class Filmes < FlixInicio #herancaPrincipal
    def initialize(titulo, ano_lancamento, genero, duracao, classificacao)
      super(titulo, ano_lancamento, genero, duracao, classificacao)
    end
end

  
class Series < FlixInicio #herancaPrincipal
    attr_accessor :temporadas
  
    def initialize(titulo, ano_lancamento, genero, duracao, classificacao, temporadas)
      super(titulo, ano_lancamento, genero, duracao, classificacao)
      @temporadas = temporadas
    end
end
  
class Cliente #classeCliente
    attr_accessor :nome, :email, :senha
  
    def initialize(nome, email, senha)
      @nome = nome
      @email = email
      @senha = senha
    end
end 


class Main
  filmes_list = []
  series_list = []
  
      # Add Filmes
      filme1 = Filmes.new("Matrix", 2001, "Ação", 2.15, "12 anos")
      filmes_list << filme1
  
      filme2 = Filmes.new("Cinderela", 1999, "Desenho", 1.55, "10 anos")
      filmes_list << filme2
  
      filme3 = Filmes.new("A casa de cera", 2005, "Terror", 2.45, "14 anos")
      filmes_list << filme3
  
      filme4 = Filmes.new("A Ilha do Medo", 2012, "Suspense", 2.36, "14 anos")
      filmes_list << filme4
  
      filme5 = Filmes.new("A Cabana", 2012, "Drama", 3.10, "12 anos")
      filmes_list << filme5
  
      # Add Séries
      serie1 = Series.new("The Walking Dead", 2004, "Terror", 1.01, "12 anos", 13)
      series_list << serie1
  
      serie2 = Series.new("Stranger Things", 2018, "Terror/Suspense", 1, "12 anos", 4)
      series_list << serie2
  
      serie3 = Series.new("Game of Thrones", 2019, "Ação", 2.3, "16 anos", 4)
      series_list << serie3
  
      dados_corretos = 2
  
      # Enquanto os dados não estiverem corretos
      while dados_corretos != 1
        puts "Digite seu nome"
        nome = gets.chomp
  
        puts "Digite seu email"
        email = gets.chomp
  
        puts "Digite sua senha"
        senha = gets.chomp
  
        novo_cliente = Cliente.new(nome, email, senha)
  
        # Boas vindas
        puts "Olá #{novo_cliente.nome} Seja Bem-Vindo a FernandaFlix"
        puts "**************************"
  
        # Confirmação dos dados cadastrados
        puts "Por favor verifique se seus dados foram cadastrados corretamente..."
        puts "Nome: #{novo_cliente.nome}\nE-mail: #{novo_cliente.email}\nSenha: #{novo_cliente.senha}"
        puts "**************************"
  
        # Validação dos dados cadastrados
        puts "Se os dados castrados estiverem corretos, digite - 1\nSe os dados castrados estiverem incorretos, digite - 2"
  
        dados_corretos = gets.chomp.to_i
      end
  
      puts "**************************"
  
      # Verifica a programação escolhida
      puts "O que você deseja assistir?\n1 - Filmes\n2 - Séries"
  
      tipo_programa = gets.chomp.to_i
  
      # Pergunta se deseja filmes ou séries
      if tipo_programa == 1
        puts "Os filmes disponíveis são:"
  
        filmes_list.each_with_index do |filme, escolha|
          puts "Código do Filme: #{escolha}"
          puts "Titulo: #{filme.titulo}"
          puts "Gênero: #{filme.genero}"
          puts "Classificação: #{filme.classificacao}"
          puts "**************************"
        end
      else
        puts "As séries disponíveis são:"
  
        series_list.each_with_index do |serie, escolha|
          puts "Código do Série: #{escolha}"
          puts "Titulo: #{serie.titulo}"
          puts "Gênero: #{serie.genero}"
          puts "Classificação: #{serie.classificacao}"
          puts "Temporadas: #{serie.temporadas}"
          puts "**************************"
        end
      end
  
      programacao_escolhida = nil
      opcao = 0
  
      while opcao != 1
        if tipo_programa == 1
          puts "Digite o Código do filme escolhido."
        else
          puts "Digite o Código do série escolhida."
        end
  
        codigo_filme = gets.chomp.to_i
  
        if tipo_programa == 1
          programacao_escolhida = filmes_list[codigo_filme]
        else
          programacao_escolhida = series_list[codigo_filme]
        end
  
        puts "Você escolheu assistir #{programacao_escolhida.titulo}"
  
        puts "------------------------------------------------------------------------"
  
        puts "1 - Iniciar Filme"
        puts "2 - Escolher outro filme"
        print "OPCAO: "
        opcao = gets.chomp.to_i
      end
  
      # Caso contrário, a frase abaixo será escrita
      puts "Divirta-se assistindo #{programacao_escolhida.titulo}!!!!"
    
  end
  
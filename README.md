

<h1>Importer Movie</h1>
Este aplicativo foi criado para colocar em prática o uso de uma <strong>API externa<strong> criada no repositório do mesmo dono deste programa.

<h1>API</h1>

- O código da api pode ser encontrado no seguinte link pro repositorio: https://github.com/hurikzamith/movie-catalog-api-v2 

<h1>Configuração</h1>
Para começar a usar este aplicativo, clone o repositório e execute os seguintes comandos:

- bundle install
- rails db:migrate
- rails db:seed
Isso irá instalar as dependências necessárias, configurar o banco de dados e preenchê-lo com dados de filmes de uma API externa.

<h1>Uso</h1>
Para executar o aplicativo, use o seguinte comando:

> rails server

> Em seguida, abra um navegador da web e acesse http://localhost:3000/.

<h1>Sobre o App </h1>



> A página inicial (http://localhost:3000/) exibe uma lista de todos os filmes importados. E permite obter um filme aleatório ou limpar quaisquer filtros aplicados.

> A página de detalhes do filme (http://localhost:3000/movies/:id) mostra os detalhes de um filme específico.


https://user-images.githubusercontent.com/93097561/232254203-4d209a08-0aae-45cb-bc91-a607dccf9691.mp4


<h1>Visão Geral do Código</h1>

> config/routes.rb: Define as rotas do aplicativo, incluindo o uso do gem Devise para autenticação do usuário e os recursos para filmes.
app/controllers/movies_controller.rb: Implementa a lógica do controlador para o recurso de filmes, incluindo métodos para exibir todos os filmes e mostrar um único filme.

> db/seeds.rb: Usa uma API externa para popular o banco de dados de filmes com dados de amostra.

> app/views/movies/index.html.erb: Exibe a lista de todos os filmes e permite que o usuário obtenha um filme aleatório ou limpe quaisquer filtros aplicados.

> app/views/movies/show.html.erb: Exibe os detalhes de um filme específico.

Dependências</h1>
Este aplicativo requer as seguintes dependências:

Ruby 2.7.4
Ruby on Rails 6.1.4
Gem Devise
Gem JSON
Gem OpenURI

<h1>Agradecimentos</h1>
Este aplicativo foi criado como parte de um exercício de codificação. A API externa usada para popular os dados de filmes foi fornecida pelo exercício.

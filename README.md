# README
## Descrição
Plataforma desenvolvida como parte do teste.
Inclui:
- CRUD de clientes
- CRUD de contatos
- Tela para relatório (mostrando clientes e seus contatos)
- Relacionamento entre os dois e testes
- Autenticação usando devise
- Testes unitários usando minitest
- Layout que eu mesma fiz usando bootstrap, algo prático e explicativo
- Deploy no Heroku

# Implementação em ambiente local
- Depois de clonar o repositório
- Instalar a versão do ruby 2.7.1 (como especificado no gemfile)
- Instalar a gem Bundler `gem install bundler`
- Instalar o postgres localmente (definir o password do usuário postgres como `000000` ou atualizar o `database.yml`)
- Instalar as dependências com `bundle install`
- Criar banco de dados `rake db:create`
- Rodar as migrations `rake db:migrate`
- Iniciar o servidor local `rails s`
- Acessar o seu `localhost:3000`

# Produção
Colocado no ar no Heroku:
- [Link do github](https://github.com/Biancamazzi/teste-customerx)
- [Link do heroku](https://test-customerx.herokuapp.com/)

# README

Este projeto esta sendo desenvolvido em live no meu canal https://twitch.tv/progshowzim

# Configurando o sistema
Para configurar o sistema no seu computador você precisa do ruby, node e yarn configurado no seu computador.

Para ruby eu costumo usar o asdf como gerenciador de ruby e node. Mas você pode isntalar o gerenciador que estiver mais familiarizado.

Ruby: 3.1.2
Rails 7.0.2
Node: 16+
Yarn: 1.22+
Libvips: https://installati.one/ubuntu/20.04/libvips-dev/

Siga os passos abaixo para configurar o sistema no seu computador.
1. Instalar todas as dependências assets: `yarn install`
2. Instalar todas as dependências do rails (gems): `bundle install`
3. Configure o arquivo `database.yml` que está na pasta config com seu usuário e senha.
4. Com o banco de dados configurado gere os bancos: `rails db:create`
5. Agora execute as migrações: `rails db:migrate`
6. Fim

# Iniciando o projeto
Agora com tudo configurado, basta executa `bin/dev`

## Fluxos do sistema:
https://whimsical.com/e-commerce-showzim-LzJQQLaeREuubiZSkCMmC5

## Templates

https://startbootstrap.com/template/shop-homepage
https://startbootstrap.com/template/shop-item
https://colorlib.com/wp/template/login-form-11/
Design do perfil - https://cdn.dribbble.com/users/5015889/screenshots/14032312/media/90a535d6824b058c0476f0324ee7ae9c.png

# modelagem
https://dbdiagram.io/d/63645030c9abfc611170313f

### Usando com docker

1. Create file `.env` and `env.test` off file `.env.sample`.

2. Add values in the variables empties

3. Add value below on file `.env`

```yml
DATABASE_URL=postgres://postgres:postgres@db:5432/projeto_development
```

4. Add value below on file `.env.test`

```yml
DATABASE_URL=postgres://postgres:postgres@db:5432/projeto_test
```

5. Create file `.env.sidekiq` and add values below:
```
REDIS_URL=redis://redis:6379/0
SIDEKIQ_WORKERS=5
DATABASE_URL=postgres://postgres:postgres@db:5432/projeto_development
```
6. Execute the command below for build image
```
docker-compose up -d --no-deps --build app
```
7. Execute the command below for start project
```
docker compose up -d
```
8. Execute the command below for access bash
```
docker compose run --rm app bash
```
9. Execute the command below for create database
```
rails db:create
```
10. Execute the command below for migration database
```
rails db:migrate
```
11. Execute the command below for populate database
```
rails db:seed
```

# Command extras
Reset stats sidekiq
```
Sidekiq::Stats.new.reset
```
For the test rspec, execute the command below
```
ENV_FILE=.env.test docker compose run --rm app rspec
```
For execute rubocop
```
docker compose run --rm app rubocop
```
For debug with binding.pry
```
docker attach --detach-keys="ctrl-c" <id_do_container_app>
```

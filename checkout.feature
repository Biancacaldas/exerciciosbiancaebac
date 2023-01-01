#language: pt

Funcionalidade: Tela de Cadastro - Checkout
Como cliente da EBAC-SHOP
Quero concluir meu Cadastro
Para finalizar minha compra

Dado que eu acesse a tabela de cadastro com as seguintes informações:

Nome| Sobrenome|   País| Endereço| Cidade| CEP| Telefone| Endereço de e-mail
"Lucas"| "Oliveira"| "Brasil"| "Rua Cinco"| "Rio de Janeiro"| "22780760"| "(21) 977775555" | "lucasol@ebac.com.br"
"Daniel"| "Soares"| "Brasil"| "Rua vinte"| "Rio de Janeiro"| "22780750"| "(21) 988883333" | "danielso@ebac.com.br"
"Ana"| "Cardoso"| "Brasil" | "Rua noventa" | "Rio de Janeiro" | "21998555" | "(21) 996662222" | "anaca@ebac.com.br"

Quando eu inserir as informações obrigatórias
Então deve exibir uma mensagem: "Cadastro efetuado com sucesso"

Dado que eu acesse a tabela de cadastro com as seguintes informações:

Nome| Sobrenome| País| Endereço| Cidade| CEP| Telefone| Endereço de e-mail
"Lucas"| "Oliveira"| "Brasil"| "Rua Cinco"| "Rio de Janeiro"| "22780760"| "(21) 977775555" | "lucasol@ebac.com.br"
"Daniel"| "Soares"| "Brasil"| "Rua vinte"| "Rio de Janeiro"| "22780750"| "(21) 988883333" | "danielso@ebac.com.br"
"Ana"| "Cardoso"| "Brasil" | "Rua noventa" | "Rio de Janeiro" | "21998555" | "(21) 996662222" | "anaca@ebac.com.br"

Quando eu inserir um e-mail inválido
Então deve exibir uma mensagem de erro: "E-mail inválido"

Dado que eu acesse a tabela de cadastro com as seguintes informações:

Nome| Sobrenome| País| Endereço| Cidade| CEP| Telefone| Endereço de e-mail
"Lucas"| "Oliveira"| "Brasil"| "Rua Cinco"| "Rio de Janeiro"| "22780760"| "(21) 977775555" | "lucasol@ebac.com.br"
"Daniel"| "Soares"| "Brasil"| "Rua vinte"| "Rio de Janeiro"| "22780750"| "(21) 988883333" | "danielso@ebac.com.br"
"Ana"| "Cardoso"| "Brasil" | "Rua noventa" | "Rio de Janeiro" | "21998555" | "(21) 996662222" | "anaca@ebac.com.br"

Quando algum campo obrigatório estiver vazio
Então deve exibir uma mensagem de alerta: "Preencha os itens obrigatórios"

___________________________________________________________________________

Contexto: 
Dado que eu acesse a página do Portal EBAC-SHOP

Cenário: Cadastro com dados obrigatórios preenchidos
Quando eu inserir as informações obrigatórias
E todos os campos com "*" estiverem preenchidos
Então deve exibir uma mensagem: "Cadastro efetuado com sucesso"

Cenário: Cadastro com email incorreto
Quando eu inserir um e-mail
E o formato deste for inválido
Então deve exibir uma mensagem de erro: "E-mail inválido"

Cenário: cadastro com campo obrigatório "vazio"
Quando algum campo obrigatório estiver vazio
E faltar preencher com dados
Então deve exibir uma mensagem de alerta: "Preencha os itens obrigatórios"
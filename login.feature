#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Exemplos:
email                    | senha     |  mensagem 
"fulando@gmail.com"      | "4784sa"  |  "Usuário ou senha inválidos"        
"fulanodetal@gmail.com"  | "cvf145"  |  "Usuário ou senha inválidos"       
"bianca@gmail.com"       | "5468ert" |  "Usuário ou senha inválidos"       


Cenário: 1 - Login ou/e senha válidos
Dado que eu acesse minha conta no portal EBAC-SHOP*
Quando eu digitar <email> e <senha>
E os dados forem válidos
Então abrirá a tela de "Checkout"


Cenário: 2 - Login ou/e senha inválidos
Dado que eu acesse minha conta no portal EBAC-SHOP*
Quando eu digitar <email> e <senha>
E os dados forem inválidos
Então deve exibir uma <mensagem>

_____________________________________________________________________


Contexto:  Dado que eu acesso a página do portal EBAC-SHOP*

Exemplos:
email                    | senha     |  mensagem 
"fulando@gmail.com"      | "4784sa"  |  "Usuário ou senha inválidos"        
"fulanodetal@gmail.com"  | "cvf145"  |  "Usuário ou senha inválidos"       
"bianca@gmail.com"       | "5468ert" |  "Usuário ou senha inválidos"     


Cenário: 1 - Login e senha válidos
Quando eu digitar <email> e <senha>
E os dados forem válidos
Então abrirá a tela de "Checkout"

Cenário: 2 - Login ou senha inválida
Quando eu digitar <email> e <senha>
E os dados forem inválidos
Então deve exibir uma <mensagem>
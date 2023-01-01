#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Dado que eu acesse minha conta no portal EBAC-SHOP
Quando eu digitar o usuário "bianca@ebac.com.br"
E a senha "bianc8"
Então abrirá a tela de "Checkout"

Dado que eu acesse minha conta no portal EBAC-SHOP
Quando eu digitar o usuário "bianca@ebac.com.br"
E a senha "sadfbLA"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

Contexto:  Dado que eu acesso a página do portal EBAC-SHOP

Cenário : Login e senha válidos
Quando eu digito e-mail e senha corretamente
Então deve direcionar para a tela de "checkout"

Cenário : Login ou senha inválida
Quando eu digito o e-mail "bianlkçja@ebac.com.br"
E senha "WEFGgv4"
Então deve exibir uma mensagem de alerta: "e-mail ou senha inválidos"
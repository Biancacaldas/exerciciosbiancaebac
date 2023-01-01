#language: pt

Funcionalidade: configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Esquema do Cenário: Seleção de cor, tamanho e quantidade
Dado que eu acesse o catálogo de compras da EBAC-SHOP
Quando eu selecionar um <produto>
E escolher <cor>, <tamanho> e <quantidade>
Então deve exibir uma <mensagem> de item obrigatório

Exemplos:
produto | cor     | tamanho | quantidade | mensagem
"short" | "cinza" | "G"     | "2"        | "Item obrigatório"
"camisa"|"amarela"| "M"     | "3"        | "Item obrigatório"
"casaco"| "preto" |  "P"    | "1"        | "Item obrigatório"

Cenário: Quantidade de produto por venda
Dado que eu acesse o catálogo de compras da EBAC-SHOP
Quando eu selecionar um "produto"
E selecionar a "quantidade"
Então deve aparecer a mensagem "Máximo 10 produtos por venda"

Cenário: Voltar ao estado original
Dado que eu acesse o catálogo de compras da EBAC-SHOP
Quando eu "desistir" da compra
E clicar no botão "limpar"
Então deve "voltar" ao estado inicial

_____________________________________________________________________

Contexto: Dado que eu acesse o catálogo de compras da EBAC-SHOP

Cenário: Seleção de cor, tamanho e quantidade
Quando eu selecionar um <produto>
E escolher <cor>, <tamanho> e <quantidade>
Então deve exibir uma <mensagem> de item obrigatório

Cenário: Quantidade de produto por venda
Quando eu selecionar um "produto"
E selecionar a "quantidade"
Então deve aparecer a mensagem "Máximo 10 produtos por venda"

Cenário: Voltar ao estado original
Quando eu "desistir" da compra
E clicar no botão "limpar"
Então deve "voltar" ao estado inicial
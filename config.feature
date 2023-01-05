#language: pt

Funcionalidade: configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Esquema do Cenário: 1 - Seleção de cor, tamanho e quantidade
Dado que eu acesse o catálogo de compras da EBAC-SHOP*
Quando eu selecionar um <produto>
E escolher <cor>, <tamanho> e <quantidade>
Então deve exibir uma <mensagem> de item obrigatório

Exemplos:
produto | cor     | tamanho | quantidade | mensagem
"short" | "cinza" | "G"     | "2"        | "Item obrigatório"
"camisa"|"amarela"| "M"     | "3"        | "Item obrigatório"
"casaco"| "preto" |  "P"    | "1"        | "Item obrigatório"

Cenário: 2 - Quantidade de produto por venda maior que 10 itens
Dado que eu acesse o catálogo de compras da EBAC-SHOP*
Quando eu selecionar um <produto>, uma <cor>, um <tamanho>, uma <quantidade> 
E a quantidade for maior que 10 produtos. 
Então deve aparecer a mensagem "Máximo 10 produtos por venda"

Cenário: 3 - Voltar ao estado original
Dado que eu acesse o catálogo de compras da EBAC-SHOP*
Quando eu "desistir" da compra
E clicar no botão "limpar"
Então deve "voltar" ao estado inicial

_____________________________________________________________________

Contexto: Dado que eu acesse o catálogo de compras da EBAC-SHOP*

produto | cor     | tamanho | quantidade | mensagem
"short" | "cinza" | "G"     | "2"        | "Item obrigatório"
"camisa"|"amarela"| "M"     | "3"        | "Item obrigatório"
"casaco"| "preto" |  "P"    | "1"        | "Item obrigatório"


Cenário: 1 - Seleção de cor, tamanho e quantidade
Quando eu selecionar um <produto>
E escolher <cor>, <tamanho> e <quantidade>
Então deve exibir uma <mensagem> de item obrigatório

Cenário: 2 - Quantidade de produto por venda
Quando eu selecionar um <produto>, uma <cor>, um <tamanho>, uma <quantidade> 
E a quantidade for maior que 10 produtos. 
Então deve aparecer a mensagem "Máximo 10 produtos por venda"

Cenário: 3 - Voltar ao estado original
Quando eu "desistir" da compra
E clicar no botão "limpar"
Então deve "voltar" ao estado inicial
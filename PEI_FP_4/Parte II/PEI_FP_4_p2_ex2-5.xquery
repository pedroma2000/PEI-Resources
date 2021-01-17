(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação - Parte 2 :)
(: Exercício 2.5 - Apresentar todos os livros (todos os elementos). 
Para os livros da categoria: WEB, deve ser aplicado um desconto de 15%; :)

for $b in doc("bookstore.xml")//book[@category='WEB']
let $i := $b/price * 0.85
return <books>{$b/title, <newPrice>{$i}</newPrice>}</books>

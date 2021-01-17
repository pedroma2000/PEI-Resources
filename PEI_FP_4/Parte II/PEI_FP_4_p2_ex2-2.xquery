(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação - Parte 2 :)
(: Exercício 2.2 - Um documento com os títulos dos livros e o seu preço. 
Os dados dos livros devem ser apresentados de forma ordenada alfabeticamente pelo título; :)

for $b in doc("bookstore.xml")//book
order by $b/title
return <quote>{$b/title, $b/price}</quote>

(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação - Parte 2 :)
(: Exercício 2.1 - Todos os livros com um preço entre 30 e 100 euros; :)

for $x in doc("bookstore.xml")/bookstore/book
where $x/price>30 and $x/price<100
order by $x/title
return $x/title

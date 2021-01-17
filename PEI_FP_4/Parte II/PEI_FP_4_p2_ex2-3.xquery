(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação - Parte 2 :)
(: Exercício 2.3 - Apresentar todos os livros e o número de autores de cada um; :)

for $b in doc("bookstore.xml")//book
let $c := $b//author
return <book> { $b/title, <numberAuthors>{ count($c) }</numberAuthors>} </book>

(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação - Parte 2 :)
(: Exercício 2.4 - Apresentar o título de cada livro utilizando um elemento: <Titulo>. 
Associado a este elemento, crie um atributo indicando a posição do livro na série retornada pela consulta; :)

for $t at $i in doc("bookstore.xml")//title
return <Título pos="{$i}">{data($t)}</Título>

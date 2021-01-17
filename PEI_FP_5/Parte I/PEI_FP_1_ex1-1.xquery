(: Ficha de Trabalho 5 de Processamento Estruturado de Informação :)
(: Exercício 1.1 - Crie uma função XQuery que receba como parâmetro o nome de um autor e retorne apenas os livros desse autor; :)

declare function local:books-by-author($name) as element()* {
for $b in doc("bookstore.xml")//book
where some $a in $b//author satisfies ($a=$name)
order by $b/title
return $b/title
};
let $n :=  local:books-by-author("James McGovern")
return $n

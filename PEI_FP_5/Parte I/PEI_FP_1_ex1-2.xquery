(: Ficha de Trabalho 5 de Processamento Estruturado de Informação :)
(: Exercício 1.2 - Crie uma função que receba como parâmetro uma categoria de livros 
e retorne a lista completa de livros se pelo menos um deles pertencer à categoria recebida por parâmetro 
(ver expressões quantificadas). :)

declare function local:category($name) as element()* {
for $b in doc("bookstore.xml")//book
where some $a in $b/[@category] satisfies ($a=$name)
return $b
};
let $n :=  local:category("WEB")
return $n

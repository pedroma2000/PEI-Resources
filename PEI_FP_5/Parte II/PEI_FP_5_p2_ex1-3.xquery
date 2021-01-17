(: Parte 2, exercício 1.3 - Tendo por base a alínea 1.2., apresente uma transformação XQuery que através de um documento XML válido, 
apresente o número de autores de cada livro. :)

for $b in //book
let $c := $b//author-name
return <book>{$b/title, <numberAuthors>{count($c)}</numberAuthors>}</book>

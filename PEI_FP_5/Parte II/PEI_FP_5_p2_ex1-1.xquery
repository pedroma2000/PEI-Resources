(: Parte 2, exercício 1.1 - Escreva uma expressão XQuery que permita obter um novo documento 
com a informação do documento authors e books :)

<books-complete-info>{
for $x in doc("books.xml")//book
let $y := doc("authors.xml")//books[isbn = $x/isbn]
return <book><title>{$x/title/text()}</title><isbn>{$x/isbn/text()}</isbn><author-name>{$y/../name/text()}</author-name></book>
}</books-complete-info>

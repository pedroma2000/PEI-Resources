module namespace fp6 = 'fp6/ex1';

declare %updating
(: procura endpoint e executa :)
 %rest:path("/addbook")
 (: estamos a lidar com xml :)
 %rest:consumes("application/xml", "text/xml")
 (: adicionar informação :)
 %rest:POST("{$body}")

 (: função vai receber a informação a acrescentar e adiciona ao xml :)
function fp6:addBookToDatabase($body as document-node()) {
 db:add("pei_fp_6_p2_ex1-2", $body, "bookstore.xml")
};

declare
  %rest:path("/getnumbooks")
  %rest:GET

function fp6:getNumberOfBooks(){
  element number_books {
    for $x in db:open('pei_fp_6_p2_ex1-2')/bookstore
    let $a := $x/book
    return count($a)
  }
};
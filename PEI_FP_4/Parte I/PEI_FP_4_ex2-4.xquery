(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação :)
(: Exercício 2.4 -  A lista de todos os CDs (title, year, price) assim como a “idade” de cada CD (tendo em conta o ano atual). 
O resultado deverá ser apresentado utilizando um elemento: <AGE>. :)

for $x in doc("cd_catalog.xml")//CD
let $c := 2020 - $x/YEAR
return <CD>{$x/TITLE, $x/PRICE, $x/YEAR, <AGE>{$c}</AGE>}</CD>

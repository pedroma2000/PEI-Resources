(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação :)
(: Exercício 2.3 - Contar o número de CDs armazenados no documento. :)

for $x in doc("cd_catalog.xml")//CATALOG
let $c := $x/CD
return <Total>{count($c)}</Total>

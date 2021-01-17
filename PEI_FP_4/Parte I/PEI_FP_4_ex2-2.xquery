(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação :)
(: Exercício 2.2 - O título (Title) e preço (Price) para os CDs dos anos 90. :)

for $x in doc("cd_catalog.xml")//CD
where $x/YEAR>1989 and $x/YEAR<2000
return <CD>{$x/TITLE, $x/PRICE}</CD>

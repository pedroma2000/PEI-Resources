(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação :)
(: Exercício 2.1 - Todos os cds lançados entre 1980 e 1990, ordenados pelo ano de lançamento :)

for $x in doc("cd_catalog.xml")//CD
where $x/YEAR>1980 and $x/YEAR<1990
order by $x/YEAR
return <CD>{$x/TITLE, $x/ARTIST, $x/COUNTRY, $x/COMPANY, $x/PRICE, $x/YEAR}</CD>

(: OU 

for $x in doc("cd_catalog.xml")//CD
where $x/YEAR>1980 and $x/YEAR<1990
order by $x/YEAR
return $x
 :)
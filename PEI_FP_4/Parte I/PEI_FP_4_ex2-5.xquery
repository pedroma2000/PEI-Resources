(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação :)
(: Exercício 2.5 - O número de autores (ARTIST) existentes. Retorne um documento XML válido. :)

for $x in doc("cd_catalog.xml")//CATALOG
let $c := $x/CD/ARTIST
return <NumberArtists>{count($c)}</NumberArtists>

(: OU, Para aparecer o nome dos artistas:

<CATALOG>
{
    for $x in doc("cd_catalog.xml")//CD
    return <CD>{$x/ARTIST}</CD>
}
</CATALOG>
 :)
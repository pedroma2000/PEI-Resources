(: documento com o nome cities.xqm que tem de ser guardado na pasta webapp :)
module namespace page = 'http://basex.org/examples/web-page';

declare %updating
(: procura endpoint e executa :)
 %rest:path("/addcity")
 (: estamos a lidar com xml :)
 %rest:consumes("application/xml", "text/xml")
 (: adicionar informação :)
 %rest:POST("{$body}")
 (: função vai receber a informação a acrescentar e adiciona ao xml :)
function page:addToDatabase($body as document-node()) {
 db:add("cities", $body, "city.xml")
};
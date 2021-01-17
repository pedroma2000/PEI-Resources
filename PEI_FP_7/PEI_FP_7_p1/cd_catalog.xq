module namespace page = 'http://basex.org/examples/web-page';
declare %updating
  %rest:path("/addcd")
  %rest:consumes("application/xml", "text/xml")
  %rest:POST("{$body}")
  function page:addToDatabase($body as document-node()) { db:add("cd_catalog", $body, "cd_catalog.xml")
};

 declare
  %rest:path("getXSLcds")
  %rest:header-param("xsl", "{$xsl}​​")
  %rest:header-param("schema", "{$schema}​​")
  %rest:GET
  function page:getHTMLBooks($schema, $xsl) {
    let $r := db:open($schema)
    let $style := doc($xsl)
    return xslt:transform($r, $style)
  };
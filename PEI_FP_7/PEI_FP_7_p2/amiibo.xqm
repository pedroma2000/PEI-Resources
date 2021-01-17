module namespace page = 'http://basex.org/examples/web-page';

(:
declare %updating
  %rest:path("/addAmiibo")
  %rest:consumes("application/json", "text/json")
  %rest:POST("{$body}")
  function page:addToDatabase($body as document-node()) { db:add("amiibo", $body, "AmiboCharacter.xml")
};
:)

declare %updating
  %rest:path("/addAmiibo")
  %rest:consumes("application/xml", "text/xml")
  %rest:POST("{$body}")
  function page:addXMLToDatabase($body as document-node()) { db:add("amiibo", $body, "AmiboCharacter.xml")
};

declare %updating
  %rest:path("/deleteAmiibo")
  %rest:consumes("application/xml", "text/xml")
  %rest:DELETE
  function page:deleteFromDatabase() { db:delete("amiibo", "AmiboCharacter.xml")
};
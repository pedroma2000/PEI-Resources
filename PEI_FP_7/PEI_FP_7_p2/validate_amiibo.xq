declare function local:validate-schema($schema) as element()*
{
  for $doc in db:open('amiibo')
  return validate:xsd($doc, $schema)
};

let $m := local:validate-schema('amiiboSchema.xsd')
return $m
document{
    element CD_LIST{
        for $x in doc("cd_catalog.xml")/CATALOG/CD
        where $x/YEAR>=1990 and $x/YEAR<=1999
        return element CD{
            ($x/TITLE | $x/PRICE)
           }
      }
 }
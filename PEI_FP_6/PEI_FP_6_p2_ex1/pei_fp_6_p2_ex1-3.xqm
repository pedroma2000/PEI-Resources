module namespace fp6 = 'fp6/ex1';

declare %rest:path("/newbook")
        %rest:PUT("{$bookStore}")
        %rest:consumes("application/xml","text/xml")
        %rest:produces("application/html","text/html")
        function fp6:validateBookstore($bookStore as document-node()){
          validate:xsd($bookStore,"C:\Program Files (x86)\BaseX\webapp\Ficha6\bookstore.xsd"),
          let $bookStore := $bookStore/bookstore
          return element html{
            element body{
              <h1>Bookstore</h1>,
              element table{
                element tr{
                  <td>Titulo</td>,
                  <td>Year</td>,
                  <td>Price</td>
                },
                for $book in $bookStore/book
                return element tr{
                  <td>{ $book/title/text() }</td>,
                  <td>{ $book/year/text()  }</td>,
                  <td>{ $book/price/text() }</td>
                }
              }
            }
          }
        };
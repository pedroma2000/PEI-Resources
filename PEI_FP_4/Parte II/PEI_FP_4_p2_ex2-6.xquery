(: Ficha  de Trabalho 4 de Processamento Estruturado de Informação - Parte 2 :)
(: Exercício 2.6 - Escreva uma transformação XQuery que permita obter um novo documento XML 
de acordo com a estrutura do documento em anexo: newBookStore.xml. :)

element htlm{
  element body{
    element h1{
      "Bookstore"
    },
    element table{
      element tr {
        <td>Titulo</td>,
        <td>Year</td>,
        <td>Price</td>
      }, 
      for $book in bookstore/book
      return element tr{
        <td>{$book/title/text()}</td>,
        <td>{$book/year/text()}</td>,
        <td>{$book/price/text()}</td>
      }
    }
  }
}
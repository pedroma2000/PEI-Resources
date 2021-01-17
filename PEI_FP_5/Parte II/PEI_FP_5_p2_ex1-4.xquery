(: Parte 2, exercício 1.4 - Tendo por base a alínea 1.2., 
apresente uma transformação XQuery que através de um documento XML válido, 
apresente o número de livros de cada autor (inclua o número de livros que não foi identificado o autor). :)

<authors>{
  (:autores diferentes:)
  for $author in distinct-values(books-complete-info//author-name)
  (:se tiver autor:)
  return if (not ($author = ""))
  then element author-name{
    (:corresponde a <name></name>:)
    element name{$author},
    (:corresponde a <book></book>:)
    element book{
      (:retorna os livros que tem o autor igual ao autor que se está a contar neste momento:)
      count(for $book in books-complete-info//book
      return if($book//author-name = $author)
    then $book)
    }
  },
  
  (:contar o número de livros que não tem autor:)
  element noAuthor{
    count(
      (:retorna o total de livros que não têm autor:)
      for $book in books-complete-verinfo/book
      return if(empty($book/author-name/text()))
      then $book
    )
  }
}
</authors>

for $b in doc("bookstore.xml")//book
where some $a in $b/author satisfies $a="J K. Rowling"
return $b
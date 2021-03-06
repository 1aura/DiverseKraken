package com.elsevier.repositories;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.elsevier.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Integer>{

}

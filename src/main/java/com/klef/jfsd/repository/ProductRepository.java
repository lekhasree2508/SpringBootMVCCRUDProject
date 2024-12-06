package com.klef.jfsd.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Integer>
{
   
}

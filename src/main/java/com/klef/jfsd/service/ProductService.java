package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Product;

public interface ProductService 
{
   public String AddProduct(Product product);
   public List<Product> ViewAllProducts();
   public String deleteProduct(int pid); 
   public String updateProduct(Product p);
}

package com.klef.jfsd.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Product;
import com.klef.jfsd.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService
{
	@Autowired
	private ProductRepository productRepository;

	@Override
	public String AddProduct(Product product) 
	{
		productRepository.save(product);
		return "Product Added Successfully";
	}

	@Override
	public List<Product> ViewAllProducts() 
	{
		return (List<Product>) productRepository.findAll();
	}
	@Override
	public String deleteProduct(int pid)  
	 { 
	  productRepository.deleteById(pid); 
	  return "Product Deleted Successfully"; 
	 } 
	@Override
	public String updateProduct(Product p) {
		 
		    	Product p1 = productRepository.findById(p.getId()).get();
		        
		    	p1.setName(p.getName());
		    	p1.setDescription(p.getDescription());
		    	p1.setPrice(p.getPrice());
		    	p1.setQuantity(p.getQuantity());
		    	
		        productRepository.save(p1);
		        
		        return "Product Updated Successfully";
		    	
		    }
}

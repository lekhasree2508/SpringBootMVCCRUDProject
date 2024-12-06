package com.klef.jfsd.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.Product;
import com.klef.jfsd.service.ProductService;

import jakarta.servlet.http.HttpServletRequest;

@Controller 
public class ProductController  
{ 
 @Autowired 
 private ProductService productService;
 

@GetMapping("/")
public ModelAndView home()
{
ModelAndView mv = new ModelAndView(); 
mv.setViewName("home");
    return mv;
}
 
 @GetMapping("addproduct")
 public ModelAndView addproductdemo()
 {
	   ModelAndView mv = new ModelAndView("addproduct");
	   return mv;
 }
 
 @PostMapping("insertproduct")
    public ModelAndView insertemp(HttpServletRequest request)
    {
     String name = request.getParameter("name");
     String description = request.getParameter("description");
     double price = Double.parseDouble(request.getParameter("price"));
     int quantity = Integer.parseInt(request.getParameter("quantity"));
     
     
       Product p = new Product();
       p.setName(name);
       p.setDescription(description);
	   p.setPrice(price);
      
	   ModelAndView mv = new ModelAndView("product inserted");
       String msg=productService.AddProduct(p);
	   System.out.println(msg);
	   mv.setViewName("productmsg");
	   mv.addObject("message",msg);
       return mv;
    }
 @GetMapping("viewallproducts")
 public ModelAndView viewallproductsdemo() {
     List<Product> productlist = productService.ViewAllProducts();
     ModelAndView mv = new ModelAndView("viewallproducts");
     mv.addObject("productlist", productlist);
     mv.addObject("count", productlist.size());
     return mv;
 }

 @GetMapping("updateproduct")
 public ModelAndView updateproduct()
 {
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("updateproduct");
	  return mv;
 }
 @PostMapping("updateprod")
 public ModelAndView updateProd(HttpServletRequest request) {
     ModelAndView mv = new ModelAndView();
    
     try {
        
         String idParam = request.getParameter("id");
         String name = request.getParameter("name");
         String description = request.getParameter("description");
         String priceParam = request.getParameter("price");
         String quantityParam = request.getParameter("quantity");
         
        
         int id = Integer.parseInt(idParam);
         double price = Double.parseDouble(priceParam);
         int quantity = Integer.parseInt(quantityParam);
         
         
         Product p = new Product();
         p.setId(id);
         p.setName(name);
         p.setDescription(description);
         p.setPrice(price);
         p.setQuantity(quantity);
         
         // Update product and get message
         String msg = productService.updateProduct(p); 
         
         mv.setViewName("updatesuccess");
         mv.addObject("message", msg);
     
     } catch(NumberFormatException e) {
         mv.setViewName("updateerror");
         mv.addObject("message", "Invalid number format: " + e.getMessage());
     } catch(Exception e) {
         mv.setViewName("updateerror");
         mv.addObject("message", e.getMessage());
     }
     return mv;
 }
 @GetMapping("deleteproduct") 
 public ModelAndView deleteProduct() { 
     ModelAndView mv = new ModelAndView(); 
     List<Product> productlist = productService.ViewAllProducts(); 
     mv.setViewName("deleteproduct"); 
     mv.addObject("productlist", productlist);  
     return mv; 
 } 

 @GetMapping("delete") 
 public String deleteoperation(@RequestParam("id") int pid) { 
     productService.deleteProduct(pid); 
     return "redirect:/deleteproduct";  
 } 
}
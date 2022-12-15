package ra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import ra.model.service.ICatalogService;
import ra.model.service.IProductService;
import ra.model.serviceImp.CatalogServiceImp;
import ra.model.serviceImp.ProductServiceImp;
import ra.model.untity.Catalog;
import ra.model.untity.Product;


import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("home")
public class Home {
    @Autowired
    private CatalogServiceImp catalogService;
    @Autowired
    private ProductServiceImp productService;
    @RequestMapping("getAll")
    public ModelAndView getAllCatalog(){
        ModelAndView modelAndView = new ModelAndView("catalog");
        List<Catalog> listCatalog = catalogService.findAll();
        modelAndView.addObject("listCatalog",listCatalog);
        return modelAndView;
    }
    @GetMapping("initCreate")
     public String initCreate(Model model){
        Catalog catalog = new Catalog();
        model.addAttribute("catalog",catalog);
        return "createCatalog";
    }
    @PostMapping("create")
    public String createCatalog(@ModelAttribute("catalog") Catalog catalog){
        boolean result = catalogService.save(catalog);
        if (result){
            return "redirect:getAll";
        }else{
            return "error";
        }
    }

    @GetMapping("initUpdate")
    public String initUpdate(Model model, int catalogId){
        Catalog catalogUpdate = catalogService.findById(catalogId);
        model.addAttribute("catUpdate",catalogUpdate);
        return "updateCatalog";
    }
    @PostMapping("update")
    public String updateCatalog(Catalog catUpdate){
        boolean result = catalogService.update(catUpdate);
        if (result){
            return "redirect:getAll";
        }else{
            return "error";
        }
    }
    @GetMapping("delete")
    public String deleteCatalog(int catalogId){
        boolean result = catalogService.delete(catalogId);
        if (result){
            return "redirect:getAll";
        }else {
            return "error";
        }
    }

    @PostMapping("search")
    public String customSeach(String search, Model model){
        List<Catalog> listCatalog = catalogService.search(search);
        model.addAttribute("listCatalog",listCatalog);
        return "catalog";
    }

    @RequestMapping("getAllProduct")
    public ModelAndView getAllProduct(){
        ModelAndView modelAndView = new ModelAndView("Product");
        List<Product> listProduct = productService.findAll();
        modelAndView.addObject("listProduct",listProduct);
        return modelAndView;
    }
    @GetMapping("initCreateProduct")
    public ModelAndView initCreateProduct(Model model){
        Product product = new Product();
        model.addAttribute("product",product);
        ModelAndView modelAndView = new ModelAndView("createProduct");
        List<Catalog> list = catalogService.findAll();
        modelAndView.addObject("listCatalog",list);
        return modelAndView;
    }
    @PostMapping("createProduct")
    public String createProduct(@ModelAttribute("product") Product product){
        Date date= new Date();
        System.out.println(date);
        product.setCreateDate(date);


        boolean result = productService.save(product);
        if (result){
            return "redirect:getAllProduct";
        }else{
            return "error";
        }

    }

    @GetMapping("initUpdateProduct")
    public String initUpdateProduct(Model model, int productId){
        Product productUpdate = productService.findById(productId);
        model.addAttribute("proUpdate",productUpdate);
        return "updateProduct";
    }
    @PostMapping("updateProduct")
    public String updateProduct(Product proUpdate){
        boolean result = productService.update(proUpdate);
        if (result){
            return "redirect:getAll";
        }else{
            return "error";
        }
    }
    @GetMapping("deleteProduct")
    public String deleteProduct(int id){
        boolean result = productService.delete(id);
        if (result){
            return "redirect:getAll";
        }else {
            return "error";
        }
    }
    @PostMapping("search")
    public String customSeach(String search, Model model){
        List<Product> listProduct = productService.search(search);
        model.addAttribute("listProduct",listProduct);
        return "product";
    }
}

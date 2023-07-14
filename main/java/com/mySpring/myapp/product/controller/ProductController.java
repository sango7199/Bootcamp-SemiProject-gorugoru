package com.mySpring.myapp.product.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mySpring.myapp.product.vo.ProductVO;


public interface ProductController {
	public ModelAndView listProducts(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addProduct(@ModelAttribute("info") ProductVO productVO,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView removeProduct(@RequestParam("product_no") String product_no, HttpServletRequest request, HttpServletResponse response) throws Exception;
}

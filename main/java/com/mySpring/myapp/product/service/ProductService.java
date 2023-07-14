package com.mySpring.myapp.product.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.mySpring.myapp.product.vo.ProductVO;

public interface ProductService {
	public List listProducts() throws DataAccessException;
	public int addProduct(ProductVO productVO) throws DataAccessException;
	public int removeProduct(String product_no) throws DataAccessException;
}

package com.mySpring.myapp.product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.mySpring.myapp.product.vo.ProductVO;


@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllProductList() throws DataAccessException {
		List<ProductVO> productsList = null;
		productsList = sqlSession.selectList("mapper.product.selectAllProductList");
		return productsList;
	}

	@Override
	public int insertProduct(ProductVO productVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.product.insertProduct", productVO);
		return result;
	}

	@Override
	public int deleteProduct(String product_no) throws DataAccessException {
		int result = sqlSession.delete("mapper.product.deleteProduct", product_no);
		return result;
	}
}

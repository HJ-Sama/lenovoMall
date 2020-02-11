package edu.ouc.lenovo.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
//import com.sun.faces.taglib.jsf_core.MaxMinValidatorTag;
import edu.ouc.lenovo.domain.Order;
import edu.ouc.lenovo.domain.OrderItem;
import edu.ouc.lenovo.domain.ProductImg;
import edu.ouc.lenovo.utils.DataSourceUtils;

public class ProductImgDao {
	//添加商品图片
	public void addProductImg(ProductImg pi) throws SQLException {
		String sql = "insert into product_pic_info("
				+ "id,descript,url,is_master,img_order,img_status)"
				+ "values(?,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql, pi.getId(), pi.getDescript(), pi.getUrl(),
				pi.getIs_master(),pi.getImg_order(), pi.getImg_status());
	}
	// 根据id查找商品图片
	public List<ProductImg> findProductImgById(String id) throws SQLException {
		String sql = "select * from product_pic_info where id=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<ProductImg>(ProductImg.class), id);
	}
}
package edu.ouc.lenovo.web.servlet.client;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.ouc.lenovo.domain.PageBean;
import edu.ouc.lenovo.service.ProductService;
/**
 * 前台页面，用于多条件过滤搜索功能的servlet
 */
public class MultiConditionSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 1.定义当前页码，默认为1
		int currentPage = 1;
		String _currentPage = req.getParameter("currentPage");
		if (_currentPage != null) {
			currentPage = Integer.parseInt(_currentPage);
		}
		// 2.定义每页显示条数,默认为4
		int currentCount = 8;	
		//获取前台过滤条件
		String searchfield = req.getParameter("selectA");
		//如果没有条件，则表单传递的为默认值，此时默认查询全部商品目录
//		if(" ".equals(searchfield)){
//			req.getRequestDispatcher("/showProductByPage").forward(req, resp);
//			return;
//		}
		// 3.获取查找的分类
		String category = "全部商品";
		String _category = req.getParameter("selectA");
		if (_category != null) {
			category = _category;
		}
		// 4.调用service，完成获取当前页分页Bean数据.
		ProductService service = new ProductService();
		PageBean bean = service.findProductByPage(currentPage, currentCount,
				category);
		// 将数据存储到request范围，跳转到product_list.jsp页面展示
		req.setAttribute("bean", bean);
		req.getRequestDispatcher("/client/product_list.jsp").forward(req, resp);
		return;
	}
}

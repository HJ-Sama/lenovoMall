package edu.ouc.lenovo.web.servlet.client;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.ouc.lenovo.domain.PageBean;
import edu.ouc.lenovo.service.ProductService;
//分页显示数据
public class ShowProductByPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		// 1.定义当前页码，默认为1
		int currentPage = 1;
		String _currentPage = request.getParameter("currentPage");
		if (_currentPage != null) {
			currentPage = Integer.parseInt(_currentPage);
		}
		// 2.定义每页显示条数
		int currentCount = 8;
		String _currentCount = request.getParameter("currentCount");
		if (_currentCount != null) {
			currentCount = Integer.parseInt(_currentCount);
		}
		// 3.获取查找的分类
		String category = "全部商品";
		String _category = request.getParameter("category");
		if (_category != null) {
			category = _category;
		}
		
		Map<String,String> allCategory = new HashMap<String,String>();
		if(request.getSession().getAttribute("allCategory")!=null)
		allCategory = (Map<String,String>)request.getSession().getAttribute("allCategory");
		if(allCategory.isEmpty())
		{
			allCategory.put("category", category);
			request.getSession().setAttribute("allCategory", allCategory);
		}
		else {
			allCategory.put("subCatagory1", request.getParameter("subCatagory1"));
			allCategory.put("subCatagory2", request.getParameter("subCatagory2"));
			allCategory.put("subCatagory3", request.getParameter("subCatagory3"));
			request.getSession().setAttribute("allCategory", allCategory);
		}
		// 4.调用service，完成获取当前页分页Bean数据.
		ProductService service = new ProductService();
		PageBean bean = service.findProductByPage(currentPage, currentCount,
				category);
		// 将数据存储到request范围，跳转到product_list.jsp页面展示
		request.setAttribute("bean", bean);
		request.getRequestDispatcher("/client/product_list.jsp").forward(request, response);
		return;
	}
}

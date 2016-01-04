package org.blueshit.csms.filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

public class CharacterEncodingFilter implements Filter {
	
	
	public void init(FilterConfig filterConfig) throws ServletException {

	}

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;

		// 解决以post方式提交的数据编码问题
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		// 放行
		chain.doFilter(new MyRequest(request), response);

	}

	public void destroy() {
		// TODO Auto-generated method stub

	}
}

// 继承request包装类，增强getParameter方法，用来解决get方法乱码的问题
class MyRequest extends HttpServletRequestWrapper {
	private HttpServletRequest request;

	public MyRequest(HttpServletRequest request) {
		super(request);
		this.request = request;
	}

	@Override
	public String getParameter(String name) {
		String value = this.request.getParameter(name);
		if (value == null) {
			return null;
		}
		if (!this.request.getMethod().equalsIgnoreCase("get")) {
			return value;
		}
		try {
			value = new String(value.getBytes("iso8859-1"),
					this.request.getCharacterEncoding());
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e);
		}
		return value;
	}

	// 重构方法
	@Override
	public Map getParameterMap() {
		try {
			if (!this.request.getMethod().equals("GET")) {// 判断是否是get请求方式
				return this.request.getParameterMap();
			}

			Map<String, String[]> map = this.request.getParameterMap(); // 接受客户端的数据
			Map<String, String[]> newmap = new HashMap();
			for (Map.Entry<String, String[]> entry : map.entrySet()) {
				String name = entry.getKey();
				String values[] = entry.getValue();

				if (values == null) {
					newmap.put(name, new String[] {});
					continue;
				}
				String newvalues[] = new String[values.length];
				for (int i = 0; i < values.length; i++) {
					String value = values[i];
					value = new String(value.getBytes("iso-8859-1"),
							this.request.getCharacterEncoding());
					newvalues[i] = value; // 解决乱码后封装到Map中
				}

				newmap.put(name, newvalues);
			}

			return newmap;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public String[] getParameterValues(String name) {
		// TODO Auto-generated method stub
		return super.getParameterValues(name);
	}

}

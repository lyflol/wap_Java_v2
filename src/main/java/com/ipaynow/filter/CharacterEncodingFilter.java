package com.ipaynow.filter;

import javax.servlet.*;
import java.io.IOException;

public class CharacterEncodingFilter implements Filter {

	protected FilterConfig filterConfig = null;
	protected String encoding = "";

	public void destroy() {
		filterConfig = null;
		encoding = null;
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		if (encoding != null) {
			request.setCharacterEncoding(encoding);
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig arg0) throws ServletException {
		this.filterConfig = arg0;
		this.encoding = arg0.getInitParameter("encoding");
	}

}
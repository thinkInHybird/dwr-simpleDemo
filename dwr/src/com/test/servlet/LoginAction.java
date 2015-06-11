/** 淇敼鍘嗗彶
 *   鏃ユ湡               浣滆��          淇敼鍐呭
 * -----------------------------------------------------------------------------
 * 2011-01-9            鏉庡皬寮�         鍒涘缓CLASS
 */
package com.test.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.huatech.messageremind.service.User;


public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = -5216193301182504458L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        int id = Integer.valueOf(request.getParameter("id"));
        String username = request.getParameter("username");
		HttpSession session = request.getSession();
		User user = new User();
		user.setHumanid(id);
		user.setName(username);

		session.setAttribute("userinfo", user);
		response.sendRedirect("index.jsp");
	}
}

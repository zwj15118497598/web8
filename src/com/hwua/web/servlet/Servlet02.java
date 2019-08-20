package com.hwua.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.hwua.entity.Student;

public class Servlet02 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		//resp.getWriter().write("aa");
		//resp.getWriter().write("<div>aa</div>");
		//如果响应中没有内容,客户端得到的空字符串""
		//传回去一个学生对象
		Student stu = new Student("张三",15,"男");
		//resp.getWriter().write(stu.toString());
		resp.getWriter().write(JSON.toJSONString(stu));
	}
}

package com.hr.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.hr.dao.OrderMapper;
import com.hr.entity.Order;
import com.hr.entity.OrderDetail;

public class Test1 {
	public static void main(String[] args) throws IOException {
		InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(in);
		SqlSession session = sf.openSession();
		
		OrderMapper mapper = session.getMapper(OrderMapper.class);
		List<Order> list = mapper.queryAll3();
		for (Order order : list) {
			System.out.println("������Ϣ��"+order);
			List<OrderDetail> details = order.getOdetails();
			for (OrderDetail od : details) {
				System.out.println("��������:"+od);
				System.out.println("\t����:"+od.getOrder());
				System.out.println("\t��Ʒ:"+od.getProduct());
			}
			System.out.println("=====================================");
		}
		session.close();
	}
}

package com.zhiye.bhmall;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.alibaba.druid.pool.DruidDataSource;
import com.zhiye.bhmall.modules.vote.socket.SocketServer;

import springfox.documentation.swagger2.annotations.EnableSwagger2;
import tk.mybatis.spring.annotation.MapperScan;

@EnableTransactionManagement//开启事务管理
@SpringBootApplication
@EnableSwagger2
@MapperScan({ "com.zhiye.bhmall.modules.vote.mapper" })
public class VoteappApplication {

	public static void main(String[] args) {
		SpringApplication.run(VoteappApplication.class, args);
		//起socket服务
		SocketServer server = new SocketServer();
		server.startSocketServer(9998);
	}

	@Autowired
	private Environment env;

	@Bean
	public DataSource dataSource() {
		DruidDataSource dataSource = new DruidDataSource();
		dataSource.setUrl(env.getProperty("spring.datasource.url"));
		dataSource.setUsername(env.getProperty("spring.datasource.username"));// 鐢ㄦ埛鍚�
		dataSource.setPassword(env.getProperty("spring.datasource.password"));// 瀵嗙爜
		dataSource.setInitialSize(10);
		dataSource.setMaxActive(50);
		dataSource.setMinIdle(0);
		dataSource.setMaxWait(60000);
		dataSource.setValidationQuery("SELECT 1");
		dataSource.setTestOnBorrow(false);
		dataSource.setTestWhileIdle(true);
		dataSource.setPoolPreparedStatements(false);
		return dataSource;
	}
}

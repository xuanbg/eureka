package com.insight.eureka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

/**
 * @author 宣炳刚
 * @date 2017/9/15
 * @remark 应用入口程序
 */
@EnableEurekaServer
@SpringBootApplication
public class EurekaApplication {

	/**
	 * 应用入口方法
	 *
	 * @param args 启动参数
	 */
	public static void main(String[] args) {
		SpringApplication.run(EurekaApplication.class, args);
	}
}

package com.spring.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringBootConfiguration;

/**
 * 系统启动后执行这里,运行浏览器
 */
@SpringBootConfiguration
public class AutoStartProjectInDefaultBrowser implements CommandLineRunner {
    @Value("${server.port}")
    private String port;

    @Value("${server.servlet.context-path}")
    private String path;

    /**
     springboot自带的监听任务,启动浏览器
     @param args
     @throws Exception
     */
    @Override
    public void run(String ... args) throws Exception {
        try {
            Runtime.getRuntime().exec("cmd /c start http://localhost:" + port + ""+path);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}

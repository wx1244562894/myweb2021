package myweb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author wx
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class MywebApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(MywebApplication.class, args);
        System.out.println("myweb启动成功!");
    }
}

package com.javaclimb.music;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 热更新、热加载
 * 1.Ctrl+Alt+S , 找到Build, Execution, Deplyment 打对勾
 * 2. Ctrl+Shift+Alt+/ ,找到注册，complier.automake.allow.when.app.running 打对勾
 * 3. 执行Ctrl+F9热加载
 */

@SpringBootApplication
@MapperScan("com.javaclimb.music.dao")
public class MusicApplication {

    public static void main(String[] args) {
        SpringApplication.run( MusicApplication.class, args );
    }

}

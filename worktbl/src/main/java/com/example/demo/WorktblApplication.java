package com.example.demo;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class WorktblApplication {
	public static void main(String[] args) {
		SpringApplication.run(WorktblApplication.class, args);
	}
	  @Bean
	  public CommandLineRunner demo(Hihatu_workhourRepository repository) {
	    return (args) -> {
	      // save a few customers
	    
	    ExcelReader xls;
	    for (int i=4;i<=7;i++)
	    {
			xls=new ExcelReader(String.format("./勤務表-%d.xls",i));
			xls.parse(repository);
	    }
	    };
	  }

}

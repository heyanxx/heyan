package hy.ssm.pojo;

import java.util.Date;



import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User {
	private int userId;

	private String userName;

	private String passWord;
	private String userAutho;
	private Date accessTime;
	private String macAddress;
	private String ipAddress;
	private Date creatTime;
	private Date updateTime;



}

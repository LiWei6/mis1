# mis1
#查找用户test1可以查看的页面SQL语句：  
SELECT MenuName ‘查询页面名称’  
FROM sys_menu ‘从页面表中’  
WHERE MenuID IN   
	(SELECT PrivilegeAccessKey  
	FROM cf_privilege  
	WHERE ((PrivilegeMaster='CF_Role'    
		AND PrivilegeMasterKey IN  
					(SELECT RoleID  
					FROM cf_userrole  
					WHERE UserID=  
						(SELECT UserID  
						FROM cf_user  
						WHERE LoginName='test1'  
						)  
					)  
				)   
		OR (PrivilegeMaster='CF_User'   
				AND PrivilegeMasterKey=  
					(SELECT UserID  
						FROM cf_user  
						WHERE LoginName='test1'  
					)	  
				))  
		AND PrivilegeAccess='Sys_Menu'   
		AND PrivilegeOperation='Permit'   
	) ‘通过用户id和用户所在角色去查询可访问的页面id’  
#伪代码：  
1.	从用户表中通过用户名查找用户ID  
2.	通过用户ID从用户&角色表中查找该用户对应角色的集合  
3.	从权限表中通过用户ID或用户对应角色集合，查找对象名为页面 AND 访问权限为允许的对应对象的ID  
4.	从页面表中通过对象ID，查找对应页面名称  
##运行结果:   
![运行结果](http://h.hiphotos.baidu.com/image/pic/item/0eb30f2442a7d933df1b1baea54bd11372f001bf.jpg)  
#查询订单页面可操作按钮的SQL语句  
SELECT PrivilegeMaster,PrivilegeAccess,BtnName  
FROM cf_privilege AS cp LEFT JOIN sys_button AS sb ON cp.PrivilegeAccessKey=sb.BtnID  
WHERE  
((PrivilegeMaster='CF_Role'    
		AND PrivilegeMasterKey IN  
					(SELECT RoleID  
					FROM cf_userrole  
					WHERE UserID=  
						(SELECT UserID  
						FROM cf_user  
						WHERE LoginName='test1'  
						)  
					)  
				)   
		OR (PrivilegeMaster='CF_User'   
				AND PrivilegeMasterKey=  
						FROM cf_user  
						WHERE LoginName='test1'  
FROM sys_button  
WHERE MenuNo=(SELECT MenuNo  
							FROM sys_menu  
							WHERE MenuName='订单'  
	
))  
#伪代码:  
1.	从用户表中通过用户名查找用户ID	  
2.	通过用户ID从用户&角色表中查找该用户对应角色的集合   
3.	从权限表中通过用户ID或用户对应角色集合，查找对象名为按钮 AND 访问权限为允许的对应对象的ID  
4.	从页面表中找到名称为订单的页面ID  
5.	从按钮表中找出页面ID为订单页面ID的按钮ID  
6.	再从第5步中找到的订单页面ID中找出属于第3步中对象ID的记录  
7.	通过对象ID连接权限表与按钮表  
8.	选择出所选记录对应的权限类型，对象类型，对象名称  
#运行结果：  
![运行结果](http://g.hiphotos.baidu.com/image/pic/item/f11f3a292df5e0fe5f3f76dc546034a85fdf72cc.jpg)


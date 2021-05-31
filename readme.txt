07-ssm  ssm整合开发
spring + springmvc + mybatis

springmvc：视图层，界面层，负责接收请求，显示处理结果

spring ：业务层，管理service dao 工具类对象

mybatis：持久层，访问数据库的

整合中有容器
1、第一个容器springmvc容器，管理controller控制器对象
2、第二个容器spring容器，管理service、dao工具类对象
我们要做的是把使用的对象交给合适的容器创建。
把controller还有web开发的相关对象交给springmvc容器
这些web用的对象写在springmvc配置文件中

service、dao对象定义在spring的配置文件中

spring容器和springmvc容器是有关系的，关系已经确定好了
springmvc容器是spring容器的子容器，类似java中的继承，子可以访问父的内容
在子容器中的controller可以访问父容器中的service对象，就可以实现controller
使用service对象

实现步骤：
1、使用springdb的mysql库中的student表（id auto_increment,name,age）
2、新建maven项目
3、加入依赖
    spring + springmvc + mybatis+ jackson+ mysql + druid+
    jsp+ servlet
4、写web.xml
    1）注册DispatcherServlet 目的： 创建springmvc容器对象，才能创建controller类对象
                                   创建的是servlet，才能接受用户的请求

    2）注册spring的监听器ContextLoaderListener：目的：创建spring的容器对象，才能创建service、dao等对象

    3）注册字符集过滤器，解决post请求乱码问题

5、创建包 controller包 service包 dao 实体类名

6、写spring、springmvc、mybatis的配置文件
    1）springmvc配置文件
    2）spring配置文件
    3）mybatis配置文件
    4）数据库配置文件

7、写代码 dao接口和mapper文件  service和实现类 controller 实体类

8、写jsp页面
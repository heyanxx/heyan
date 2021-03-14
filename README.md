# heyan

## 相关问题


### 1.每次gradle 更新后

需要新建lib文件放入ojdbc8.jar /<br>
gradle refresh以后需要 build ptah 添加src 和resources文件作为source <br>
default output folder <br>
heyan/WebContent/WEB-INF/classes <br>
deployment assembly->webcontent <br>


### 2.无法加载js,css等静态文件
类似于 net::err_aborted 404 <br>
分析缘由：&lt;servlet-mapping&gt;的&lt;url-pattern&gt;/&lt;/url-pattern&gt;<br>
把全部的请求都交给spring去处理了，而全部available的请求url都是在Constroller里使用相似@RequestMapping(value = "/login/{user}", <br>
method = RequestMethod.GET)这样的注解配置的，<br>
这样的话对js/css/jpg/gif等静态资源的访问就会得不到

#### 1.解决方案一

修改web.xml

&lt;servlet-mapping&gt;<br>
        &lt;servlet-name&gt;spring&lt;/servlet-name&gt;<br>
        &lt;url-pattern&gt;*.do&lt;/url-pattern&gt;<br>
 &lt;/servlet-mapping&gt;<br>

url要以.do结尾<br>

#### 2.解决方案二<br>

修改springmvc.xml<br>

&lt;mvc:resources location="/images/" mapping="/images/**"/&gt;<br>
&lt;mvc:resources location="/css/" mapping="/css/**"/&gt;<br>
&lt;mvc:resources location="/js/" mapping="/js/**"/&gt;<br>

需要spring3+ ， 这个配置告诉spring 静态资源的处理方式<br>
#### 3.解决方案三<br>
修改web.xml<br>
&lt;servlet-mapping&gt; <br>
&lt;servlet-name&gt;default&lt;/servlet-name&gt; <br>
&lt;url-pattern&gt;*.js&lt;/url-pattern&gt; <br>
&lt;url-pattern&gt;*.css&lt;/url-pattern&gt; <br>
&lt;url-pattern&gt;/assets/*"&lt;/url-pattern&gt; <br>
&lt;url-pattern&gt;/images/*&lt;/url-pattern&gt; <br>
&lt;/servlet-mapping&gt;

#### 4.解决方案四<br>

修改springmvc.xml<br>

&lt;mvc:default-servlet-handler/&gt;,&lt;&lt;&lt;&lt;&lt;好使<br>

### 20210315.遇到问题
严重: Error configuring application listener of class [org.springframework.web.context.ContextLoaderListener]
试过deployment assembly-add-jar ，不行，试过网上许许多多方法都不对
结果 删除了 gradle里
implementation group: 'org.springframework.boot', name: 'spring-boot-starter-validation', version: '2.3.7.RELEASE'
 这个jar包后 回复正常


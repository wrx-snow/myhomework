本作业部署在cloud9上，外网访问地址为：https://myrails-c9-rxsnow.c9users.io/(cloud9需要付费才能保持进程一直开启，老师如果打开此网址后没有看到相应内容，请用账号:xw_informal@163.com 密码：811129wrx 登录cloud9（https://c9.io/login），之后open workspace进入虚拟机，再cd newtest,最后执行rails server -b $IP -p $PORT 命令。然后重新打开https://myrails-c9-rxsnow.c9users.io/就能看到作业内容）
本作业通过一个登陆系统，实现了数据库的增删改查、网页链接、时间显示等操作
数据库的增删改查操作体现为：增——注册新用户；删——删除账户；改——更改密码；查——登陆时的账号和密码检查。还实现了cookie的保存，登陆成功后刷新页面不需重复登陆。登陆后可以打开主页，主页实现了网页链接、时间显示操作。
助教老师可以通过新增账号，登陆，更改密码，删除账号等操作验证系统的功能正确性。辛苦助教老师了！谢谢！

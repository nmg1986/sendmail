#!/bin/bash
#--coding:utf-8--
#

ipaddr=$(ifconfig eth0 | grep "inet addr:" | awk '{print $2}' | cut -d':' -f2)

smtp_server="mail.d-heaven.com:587"
send_from="niuminguo@d-heaven.com"
send_to="cuihongbao@d-heaven.com dengchunming@d-heaven.com liguanping@d-heaven.com linhailong@d-heaven.com xuezhizhong@d-heaven.com"
send_cc="niuminguo@d-heaven.com"
send_user="niuminguo"
send_password="P@ssw0rd"

mail=/opt/sendemail/bin/sendEmail
$mail -s $smtp_server -f $send_from -t $send_to -cc "$send_cc" -u "${ipaddr} is alive " -m "联通云平台"   -xu $send_user -xp $send_password >/dev/null




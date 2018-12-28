sed '/httpd.sh/s/\s\([[:graph:]]\+\)PermSize\([[:graph:]]\+\)\s/ /g' -i startresin.sh
sed '/httpd.sh/s/\s\([[:graph:]]\+\)MaxPermSize\([[:graph:]]\+\)\s/ /g' -i startresin.sh
sed '/httpd.sh/s/\s\([[:graph:]]\+\)wagent.jar\s/ /g' -i startresin.sh
sed '/httpd.sh/s/-Xss\([[:digit:]]\+\)k/ /g' -i startresin.sh
sed '/httpd.sh/s/-Xss\([[:digit:]]\+\)K/ /g' -i startresin.sh
sed '/httpd.sh/s/\sstart\s/ /g' -i startresin.sh
sed '/httpd.sh/s/httpd.sh\s/httpd.sh start -J-javaagent:..\/wagent.jar -J-XX:PermSize=128m -J-XX:MaxPermSize=256m /g' -i startresin.sh

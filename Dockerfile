FROM centos

RUN yum install -y wget nginx

RUN wget -P /usr/share/nginx/html https://archive.apache.org/dist/skywalking/8.7.0/apache-skywalking-apm-es7-8.7.0.tar.gz

#http
EXPOSE 80           
 
#https
EXPOSE 443              
 
CMD ["nginx", "-g", "daemon off;"]

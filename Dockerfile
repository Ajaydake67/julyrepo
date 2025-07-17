FROM httpd:2.4
COPY /index.html/ /usr/local/apache2/htdocs/
EXPOSE 80
WORKDIR /AJAY/WORKDIR/NEW
RUN touch file1 file2 file3 file4
RUN mkdir dir1 dir2
ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.107/bin/apache-tomcat-9.0.107.zip .

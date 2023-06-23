# Dockerfile
FROM httpd:2.4
    #MAINTAINER  Author Name author@email.com

#copy angular dist folder to container 
COPY ./dist/dockerApp /usr/local/apache2/htdocs/

#copy htaccess and httpd.conf to container
COPY .htaccess /usr/local/apache2/htdocs/
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

#change permissions
RUN chmod -R 755 /usr/local/apache2/htdocs/

#expose port
EXPOSE 80
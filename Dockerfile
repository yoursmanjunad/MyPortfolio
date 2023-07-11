FROM httpd:2.4
EXPOSE 8000
COPY . /usr/local/apache2/htdocs/

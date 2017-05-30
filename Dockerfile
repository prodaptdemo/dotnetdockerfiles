FROM microsoft/dotnet
RUN apt-get update
RUN apt-get install -y  nginx supervisor
RUN chmod 755 /var/log/*
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD ["/usr/bin/supervisord","-c","/etc/supervisor/supervisord.conf"]


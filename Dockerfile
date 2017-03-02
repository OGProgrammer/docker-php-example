FROM php:fpm
LABEL vendor="OGProgrammer" com.dockerphpexample.env="dev"
WORKDIR /var/www

# Install any dependancies you need
RUN apt-get update && apt-get -y --no-install-recommends install supervisor nginx

# Point all the logs to spit out in the docker logs out
RUN ln -sf /proc/1/fd/1 /var/log/nginx/access.log && ln -sf /proc/1/fd/2 /var/log/nginx/error.log

# Add all the files into the container to be packaged along with the image
ADD code/ /var/www/default
ADD files/nginx.conf /etc/nginx/nginx.conf
ADD files/local-site.conf /etc/nginx/conf.d/default.conf
ADD files/php-fpm.conf /usr/local/etc/php-fpm.d/zz-custom.conf
ADD files/supervisor.conf /etc/supervisor/conf.d/zz-custom.conf
ADD files/run.sh /run.sh
RUN chmod 755 /*.sh

# Expose what you need
EXPOSE 80 443

# Run it!
CMD ["/run.sh"]

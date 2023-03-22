LABEL org.opencontainers.image.source = "https://github.com/kennyparsons/svkd"

# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the uploads.php file into the container
COPY upload.php .

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache and serve the PHP application
CMD ["apache2-foreground"]

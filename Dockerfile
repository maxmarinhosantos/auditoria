FROM php:7.4-apache

# Copia os arquivos do projeto para o diretório do Apache
COPY . /var/www/html

# Habilita o módulo de reescrita
RUN a2enmod rewrite

# Reinicia o Apache
RUN service apache2 restart

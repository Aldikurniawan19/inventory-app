# FROM php:8.3-fpm

# WORKDIR /var/www

# RUN apt-get update && apt-get install -y \
#     git \
#     curl \
#     unzip \
#     libzip-dev \
#     libpng-dev \
#     libonig-dev \
#     && docker-php-ext-install pdo pdo_mysql zip gd

# COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
#     && apt-get install -y nodejs

FROM php:8.3-fpm

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    && docker-php-ext-install pdo pdo_mysql zip gd

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

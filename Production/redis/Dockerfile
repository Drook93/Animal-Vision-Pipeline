# redis/Dockerfile

FROM redis:latest

# Configure Redis to use our custom configuration file

COPY redis.conf /usr/local/etc/redis/redis.conf

# redis port

EXPOSE 6379

# Starts redis server use your custom config file reads its settings from "etc/redis/redis.conf" instead of the default location.

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
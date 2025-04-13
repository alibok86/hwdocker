FROM nginx:1.21.1

# Удаляем стандартный index.html
RUN rm /usr/share/nginx/html/index.html

# Копируем наш index.html в контейнер
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

# Imagen base: servidor Nginx ligero
FROM nginx:alpine

# Eliminar el contenido por defecto del servidor
RUN rm -rf /usr/share/nginx/html/*

# Copiar tu sitio web al directorio público de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# Iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
